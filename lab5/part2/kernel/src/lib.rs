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
// use cortex_m::interrupt::CriticalSection;
use cortex_m::interrupt::{disable, enable, free, Mutex};
use cortex_m::peripheral::Peripherals;
use cortex_m_rt::entry;
use stm32::Interrupt;
pub mod task;

static LEDS: Mutex<RefCell<Option<Leds>>> = Mutex::new(RefCell::new(None));
static TIMER_TIM2: Mutex<RefCell<Option<Timer<stm32::TIM2>>>> = Mutex::new(RefCell::new(None));
static SCHED: Mutex<RefCell<Option<task::Scheduler>>> = Mutex::new(RefCell::new(None));
const EXC_RETURN: u32 = 0xFFFFFFF9;

extern "C" {
    pub fn flash_blue();
    pub fn flash_green();
    pub fn flash_red();
    pub fn flash_orange();
}

#[no_mangle]
pub extern "C" fn sys_toggle_led(color: u32) {
    free(|cs| {
        if let (Some(ref mut leds),) = (LEDS.borrow(cs).borrow_mut().deref_mut(),) {
            leds[color as usize].toggle();
        }
    });
}

#[no_mangle]
pub extern "C" fn sys_delay_ms(delay: u32) {
    free(|cs| {
        if let (Some(ref mut sched),) = (SCHED.borrow(cs).borrow_mut().deref_mut(),) {
            sched.delay_current_task(delay / 10);
        }
    });
    let mut remaining:u32 = 0;
    loop{
        free(|cs| {
            if let (Some(ref mut sched),) = (SCHED.borrow(cs).borrow_mut().deref_mut(),) {
                remaining = sched.get_current_task_ticker();
            }
        });
        if remaining == 0{
            return;
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
            SCHED.borrow(cs).replace(Some(task::Scheduler::new()));
        });

        free(|cs| {
            if let (Some(ref mut sched),) = (SCHED.borrow(cs).borrow_mut().deref_mut(),) {
                let tramp = trampoline as u32;
                sched.setup_task_stack(1, tramp, flash_blue);
                sched.setup_task_stack(2, tramp, flash_green);
                sched.setup_task_stack(3, tramp, flash_red);
                sched.setup_task_stack(4, tramp, flash_orange);
            }
        });

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
    let mut new_sp: u32 = 0;
    let mut old_sp_store: *mut u32 = &mut 0;
    let mut same_proc: bool = false;
    free(|cs| {
        stm32::NVIC::unpend(Interrupt::TIM2);
        if let (Some(ref mut tim2), Some(ref mut sched)) = (
            TIMER_TIM2.borrow(cs).borrow_mut().deref_mut(),
            SCHED.borrow(cs).borrow_mut().deref_mut(),
        ) {
            sched.update_tickers();
            let (old, new) = sched.next_proc();
            if old == new {
                same_proc = true;
            }
            new_sp = sched.get_sp_for_task(new);
            old_sp_store = sched.get_sp_store_for_task(old);
            tim2.clear_interrupt(Event::TimeOut);
        }
    });
    unsafe {
        if !same_proc {
            ctx_switch(new_sp, old_sp_store);
        }
        enable();
    }
}
