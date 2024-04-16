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
        gpio::{gpioa::PA0, gpioc::Parts, gpioc::PC7, Edge, ExtiPin, Floating, Input, PullDown},
        prelude::*,
        time::Hertz,
        timer::{Event, Timer},
    },
    led::Leds,
};
use core::arch::asm;
use core::cell::RefCell;
use core::ops::DerefMut;

// use cortex_m::interrupt::CriticalSection;
use cortex_m::interrupt::{disable, enable, free, Mutex};
use cortex_m::peripheral::Peripherals;
use cortex_m_rt::entry;
use stm32::{Interrupt, EXTI};
pub mod task;
pub mod utils;

static LEDS: Mutex<RefCell<Option<Leds>>> = Mutex::new(RefCell::new(None));
static TIMER_TIM2: Mutex<RefCell<Option<Timer<stm32::TIM2>>>> = Mutex::new(RefCell::new(None));
static SCHED: Mutex<RefCell<Option<task::Scheduler>>> = Mutex::new(RefCell::new(None));
static EXTI: Mutex<RefCell<Option<EXTI>>> = Mutex::new(RefCell::new(None));
static TOUCH_PIN: Mutex<RefCell<Option<PC7<Input<Floating>>>>> = Mutex::new(RefCell::new(None));
static BUTTON: Mutex<RefCell<Option<PA0<Input<PullDown>>>>> = Mutex::new(RefCell::new(None));

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
    let mut remaining: u32 = 0;
    loop {
        free(|cs| {
            if let (Some(ref mut sched),) = (SCHED.borrow(cs).borrow_mut().deref_mut(),) {
                remaining = sched.get_current_task_ticker();
            }
        });
        if remaining == 0 {
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
    if let (Some(mut p), Some(cp)) = (stm32::Peripherals::take(), Peripherals::take()) {
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
        let gpioc = p.GPIOC.split();
        let mut touch_pin_out = gpioc.pc7.into_push_pull_output();
        touch_pin_out.set_high();
        let mut touch_pin_in = touch_pin_out.into_floating_input();
        touch_pin_in.make_interrupt_source(&mut p.SYSCFG);
        touch_pin_in.enable_interrupt(&mut p.EXTI);
        touch_pin_in.trigger_on_edge(&mut p.EXTI, Edge::FALLING);
        let gpioa = p.GPIOA.split();
        let mut board_btn = gpioa.pa0.into_pull_down_input();
        board_btn.make_interrupt_source(&mut p.SYSCFG);
        board_btn.enable_interrupt(&mut p.EXTI);
        board_btn.trigger_on_edge(&mut p.EXTI, Edge::RISING);
        let exti = p.EXTI;
        free(|cs| {
            TIMER_TIM2.borrow(cs).replace(Some(timer));
            LEDS.borrow(cs).replace(Some(leds));
            SCHED.borrow(cs).replace(Some(task::Scheduler::new()));
            EXTI.borrow(cs).replace(Some(exti));
            TOUCH_PIN.borrow(cs).replace(Some(touch_pin_in));
            BUTTON.borrow(cs).replace(Some(board_btn));
        });

        free(|cs| {
            if let (Some(ref mut sched),) = (SCHED.borrow(cs).borrow_mut().deref_mut(),) {
                let tramp = trampoline as u32;
                sched.setup_task_stack(1, tramp, flash_blue, true);
                sched.setup_task_stack(2, tramp, flash_green, false);
                sched.setup_task_stack(3, tramp, flash_red, false);
                sched.setup_task_stack(4, tramp, flash_orange, false);
            }
        });

        let mut nvic = cp.NVIC;
        unsafe {
            nvic.set_priority(Interrupt::EXTI0, 1);
            cortex_m::peripheral::NVIC::unmask(Interrupt::EXTI0);
            nvic.set_priority(Interrupt::EXTI9_5, 1);
            cortex_m::peripheral::NVIC::unmask(Interrupt::EXTI9_5);
            nvic.set_priority(Interrupt::TIM2, 1);
            cortex_m::peripheral::NVIC::unmask(Interrupt::TIM2);
        }
        cortex_m::peripheral::NVIC::unpend(Interrupt::TIM2);
        cortex_m::peripheral::NVIC::unpend(Interrupt::EXTI9_5);
        cortex_m::peripheral::NVIC::unpend(Interrupt::EXTI0);
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

#[interrupt]
fn EXTI0() {
    free(|cs| {
        if let (Some(ref mut sched), &mut Some(ref mut btn), &mut Some(ref mut exti)) = (
            SCHED.borrow(cs).borrow_mut().deref_mut(),
            BUTTON.borrow(cs).borrow_mut().deref_mut(),
            EXTI.borrow(cs).borrow_mut().deref_mut(),
        ) {
            sched.spawn_task();
            for _i in 0..5000 {}
            btn.clear_interrupt_pending_bit(exti);
        }
    });
}

#[interrupt]
fn EXTI9_5() {
    free(|cs| {
        if let (Some(ref mut sched), &mut Some(ref mut touch_pin), &mut Some(ref mut exti)) = (
            SCHED.borrow(cs).borrow_mut().deref_mut(),
            TOUCH_PIN.borrow(cs).borrow_mut().deref_mut(),
            EXTI.borrow(cs).borrow_mut().deref_mut(),
        ) {
            sched.destroy_task();
            for _i in 0..50_000 {}
            touch_pin.clear_interrupt_pending_bit(exti);
        }
    });
}

#[interrupt]
fn TIM2() {
    disable();
    let mut new_sp: u32 = 0;
    let mut old_sp_store: *mut u32 = &mut 0;
    let mut same_proc: bool = false;
    let mut pin: Option<PC7<Input<Floating>>> = None;
    free(|cs| {
        stm32::NVIC::unpend(Interrupt::TIM2);
        if let (Some(ref mut tim2), Some(ref mut sched), Some(touch_pin), &mut Some(ref mut exti)) = (
            TIMER_TIM2.borrow(cs).borrow_mut().deref_mut(),
            SCHED.borrow(cs).borrow_mut().deref_mut(),
            TOUCH_PIN.borrow(cs).borrow_mut().deref_mut().take(),
            EXTI.borrow(cs).borrow_mut().deref_mut(),
        ) {
            tim2.clear_interrupt(Event::TimeOut);
            let mut touch_pin_out = touch_pin.into_push_pull_output();
            let res = touch_pin_out.set_high();
            if res.is_err() {
                same_proc = true;
            }
            let mut touch_pin_in = touch_pin_out.into_floating_input();
            touch_pin_in.trigger_on_edge(exti, Edge::FALLING);
            pin = Some(touch_pin_in);
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
    if pin.is_none() {
        same_proc = true;
    }
    free(|cs| {
        TOUCH_PIN.borrow(cs).replace(pin);
    });
    unsafe {
        if !same_proc {
            ctx_switch(new_sp, old_sp_store);
        }
        enable();
    }
}
