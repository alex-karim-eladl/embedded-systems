#![no_main]
#![no_std]
#![feature(naked_functions)]
#![feature(asm_sym)]
#![feature(asm_const)]

use panic_halt as _;

use stm32f407g_disc as board;

use crate::board::interrupt;
use crate::board::{
    hal::stm32,
    hal::{
        prelude::*,
        time::Hertz,
        timer::{Event, Timer},
    },
    led::{LedColor, Leds},
};
use core::arch::asm;
use core::cell::RefCell;
use core::ops::DerefMut;
use cortex_m::interrupt::{disable, enable, free, Mutex};
use cortex_m::peripheral::Peripherals;
use cortex_m_rt::entry;
use stm32::Interrupt;

static TIMER_TIM2: Mutex<RefCell<Option<Timer<stm32::TIM2>>>> = Mutex::new(RefCell::new(None));
static LEDS: Mutex<RefCell<Option<Leds>>> = Mutex::new(RefCell::new(None));
static RED_TICKER: Mutex<RefCell<u32>> = Mutex::new(RefCell::new(0));
static BLUE_TICKER: Mutex<RefCell<u32>> = Mutex::new(RefCell::new(100));
static STACK_PTRS: Mutex<RefCell<[u32; 3]>> = Mutex::new(RefCell::new([0; 3]));
static CURR_PROC: Mutex<RefCell<usize>> = Mutex::new(RefCell::new(0));
const BLUE_STACK_PTR_IDX: usize = 1;
const RED_STACK_PTR_IDX: usize = 2;
const RED_STACK_ADDR: u32 = 0x2000_2000;
const BLUE_STACK_ADDR: u32 = 0x2000_1000;
const EXC_RETURN: u32 = 0xFFFFFFF9;
const XPSR: u32 = 0 | (1 << 24);

fn create_exception_stack_frames() {
    let blue_start: u32 = flash_blue as u32;
    let red_start: u32 = flash_red as u32;
    let mut blue_stack_ptr: u32;
    let mut red_stack_ptr: u32;
    let tramp = trampoline as u32;
    let mut red_tick: *mut u32 = &mut 0;
    let mut blue_tick: *mut u32 = &mut 0;
    free(|cs| {
        if let (&mut ref mut red_ticker, &mut ref mut blue_ticker) = (
            RED_TICKER.borrow(cs).borrow_mut().deref_mut(),
            BLUE_TICKER.borrow(cs).borrow_mut().deref_mut(),
        ) {
            red_tick = red_ticker;
            blue_tick = blue_ticker;
        }
    });

    // Setup Blue
    unsafe {
        asm!(
            "MOV {tmp}, sp",
            "LDR sp, ={stack_start}",
            "PUSH {{{xpsr}}}",
            "PUSH {{{start_addr}}}",
            "SUB sp, 20",
            "PUSH {{{arg}}}",
            "SUB sp, 32",
            "PUSH {{{trmp}}}",
            "MOV {stack_ptr}, sp",
            "MOV sp, {tmp}",
            stack_start = const BLUE_STACK_ADDR,
            trmp = in(reg) tramp,
            xpsr = in(reg) XPSR,
            start_addr = in(reg) blue_start,
            tmp = out(reg) _,
            stack_ptr = out(reg) blue_stack_ptr,
            arg = in(reg) blue_tick,
        );
        // Setup Red
        asm!(
            "MOV {tmp}, sp",
            "LDR sp, ={stack_start}",
            "PUSH {{{xpsr}}}",
            "PUSH {{{start_addr}}}",
            "SUB sp, 20",
            "PUSH {{{arg}}}",
            "SUB sp, 32",
            "PUSH {{{trmp}}}",
            "MOV {stack_ptr}, sp",
            "MOV sp, {tmp}",
            stack_start = const RED_STACK_ADDR,
            trmp = in(reg) tramp,
            xpsr = in(reg) XPSR,
            start_addr = in(reg) red_start,
            tmp = out(reg) _,
            stack_ptr = out(reg) red_stack_ptr,
            arg = in(reg) red_tick,
        );
        free(|cs| {
            if let (&mut ref mut stack_ptrs,) = (STACK_PTRS.borrow(cs).borrow_mut().deref_mut(),) {
                stack_ptrs[BLUE_STACK_PTR_IDX] = blue_stack_ptr;
                stack_ptrs[RED_STACK_PTR_IDX] = red_stack_ptr;
            }
        });
    }
}

extern "C" fn flash_blue(ticker: &mut u32) {
    loop {
        if *ticker >= 100 {
            free(|cs| {
                if let (Some(ref mut leds),) = (LEDS.borrow(cs).borrow_mut().deref_mut(),) {
                    leds[LedColor::Blue].toggle();
                }
            });
            *ticker = *ticker % 100;
        }
    }
}

extern "C" fn flash_red(ticker: &mut u32) {
    loop {
        if *ticker >= 100 {
            free(|cs| {
                if let (Some(ref mut leds),) = (LEDS.borrow(cs).borrow_mut().deref_mut(),) {
                    leds[LedColor::Red].toggle();
                }
            });
            *ticker = *ticker % 100;
        }
    }
}

#[naked]
extern "C" fn trampoline() {
    unsafe {
        asm!(
            "BL {arf}",
            "LDR LR, ={exc_return}",
            "BX LR",
            exc_return = const EXC_RETURN,
            arf = sym a_rust_fn,
            options(noreturn),
        );
    }
}

extern "C" fn a_rust_fn() {
    unsafe {
        enable();
    }
}

#[entry]
fn main() -> ! {
    if let (Some(p), Some(cp)) = (stm32::Peripherals::take(), Peripherals::take()) {
        let gpiod = p.GPIOD.split();

        // Initialize on-board LEDs
        let leds = Leds::new(gpiod);
        p.RCC.ahb1enr.modify(|_, w| w.gpioden().enabled());
        p.RCC.apb2enr.write(|w| w.syscfgen().enabled());
        // Constrain clock registers
        let rcc = p.RCC.constrain();
        // Configure clock to 100 MHz (i.e. the maximum) and freeze it
        let clocks = rcc.cfgr.sysclk(100.mhz()).freeze();
        let mut timer = Timer::tim2(p.TIM2, Hertz(100), clocks);
        timer.listen(Event::TimeOut);
        free(|cs| {
            TIMER_TIM2.borrow(cs).replace(Some(timer));
            LEDS.borrow(cs).replace(Some(leds));
        });
        create_exception_stack_frames();
        let mut nvic = cp.NVIC;
        unsafe {
            nvic.set_priority(Interrupt::TIM2, 1);
            cortex_m::peripheral::NVIC::unmask(Interrupt::TIM2);
        }
        cortex_m::peripheral::NVIC::unpend(Interrupt::TIM2);
    }

    loop {}
}

#[naked]
extern "C" fn ctx_switch(new: u32, sp_store: *const u32) {
    unsafe {
        asm!(
            // Store
            "PUSH {{R4}}",
            "PUSH {{R5}}",
            "PUSH {{R6}}",
            "PUSH {{R7}}",
            "PUSH {{R8}}",
            "PUSH {{R9}}",
            "PUSH {{R10}}",
            "PUSH {{R11}}",
            "PUSH {{LR}}",
            "STR sp, [r1]",
            // Load
            "MOV sp, r0",
            "POP {{LR}}",
            "POP {{R11}}",
            "POP {{R10}}",
            "POP {{R9}}",
            "POP {{R8}}",
            "POP {{R7}}",
            "POP {{R6}}",
            "POP {{R5}}",
            "POP {{R4}}",
            "BX LR",
            options(noreturn),
        );
    }
}

// set lsb of pc to 1
#[interrupt]
fn TIM2() {
    disable();
    let mut old_proc_store: *mut u32 = &mut 0;
    let mut new_proc_sp: u32 = 0;
    free(|cs| {
        stm32::NVIC::unpend(Interrupt::TIM2);
        if let (
            Some(ref mut tim2),
            &mut ref mut red_ticker,
            &mut ref mut blue_ticker,
            &mut ref mut curr_proc,
            &mut ref mut stack_ptrs,
        ) = (
            TIMER_TIM2.borrow(cs).borrow_mut().deref_mut(),
            RED_TICKER.borrow(cs).borrow_mut().deref_mut(),
            BLUE_TICKER.borrow(cs).borrow_mut().deref_mut(),
            CURR_PROC.borrow(cs).borrow_mut().deref_mut(),
            STACK_PTRS.borrow(cs).borrow_mut().deref_mut(),
        ) {
            tim2.clear_interrupt(Event::TimeOut);
            *red_ticker += 1;
            *blue_ticker += 1;
            let old_val = *curr_proc;
            match *curr_proc {
                0 => *curr_proc = 1,
                1 => *curr_proc = 2,
                2 => *curr_proc = 1,
                _ => *curr_proc = 1,
            }
            old_proc_store = &mut stack_ptrs[old_val];
            new_proc_sp = stack_ptrs[*curr_proc];
        }
    });
    unsafe {
        ctx_switch(new_proc_sp, old_proc_store);
        enable();
    }
}
