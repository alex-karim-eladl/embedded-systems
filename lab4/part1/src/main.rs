#![no_main]
#![no_std]

use panic_halt as _;

use stm32f407g_disc as board;

use crate::board::{
    hal::stm32,
    hal::{
        prelude::*,
        time::Hertz,
        timer::{Event, Timer},
    },
    led::{LedColor, Leds},
};
use crate::board::interrupt;
use core::cell::RefCell;
use core::ops::DerefMut;
use cortex_m::interrupt::{free, Mutex};
use cortex_m::peripheral::Peripherals;
use cortex_m_rt::entry;
use core::arch::asm;
use stm32::Interrupt;
static TIMER_TIM2: Mutex<RefCell<Option<Timer<stm32::TIM2>>>> = Mutex::new(RefCell::new(None));
static LEDS: Mutex<RefCell<Option<Leds>>> = Mutex::new(RefCell::new(None));
// const LED_ADDR_BASE: i32 = 0x2000_1000;
// const LED_ADDR_READ: i32 = LED_ADDR_BASE - 4;

fn load_led_state() -> bool {
    let mut state: i32;
    unsafe {
        asm!(
            "MOV {tmp}, sp",
            "LDR sp, =0x20001000 - 4",
            "POP {{{led_state}}}",
            "MOV sp, {tmp}",
            tmp = out(reg) _,
            led_state = out(reg) state,
        )
    }
    return state != 0;
}

fn store_led_state(state: bool) {
    let storeable_state = state as i32;
    unsafe {
        asm!(
            "MOV {tmp}, sp",
            "LDR sp, =0x20001000",
            "PUSH {{{led_state}}}",
            "MOV sp, {tmp}",
            tmp = out(reg) _,
            led_state = in(reg) storeable_state,
        )
    }
}

#[entry]
fn main() -> ! {
    if let (Some(p), Some(cp)) = (stm32::Peripherals::take(), Peripherals::take()) {
        let gpiod = p.GPIOD.split();

        // Initialize on-board LEDs
        let leds = Leds::new(gpiod);
        p.RCC.ahb1enr.modify(|_, w| w.gpioaen().enabled());
        p.RCC.ahb1enr.modify(|_, w| w.gpioden().enabled());
        p.RCC.apb2enr.write(|w| w.syscfgen().enabled());
        // Constrain clock registers
        let rcc = p.RCC.constrain();
        // Configure clock to 100 MHz (i.e. the maximum) and freeze it
        let clocks = rcc.cfgr.sysclk(100.mhz()).freeze();
        let mut timer = Timer::tim2(p.TIM2, Hertz(1), clocks);
        timer.listen(Event::TimeOut);
        store_led_state(true);
        free(|cs| {
            TIMER_TIM2.borrow(cs).replace(Some(timer));
            LEDS.borrow(cs).replace(Some(leds));
        });
        let mut nvic = cp.NVIC;
        unsafe {
            nvic.set_priority(Interrupt::TIM2, 1);
            cortex_m::peripheral::NVIC::unmask(Interrupt::TIM2);
        }

        cortex_m::peripheral::NVIC::unpend(Interrupt::TIM2);
    }

    loop {

    }
}

#[interrupt]
fn TIM2() {
    free(|cs| {
        stm32::NVIC::unpend(Interrupt::TIM2);
        if let (
            Some(ref mut tim2),
            Some(ref mut leds),
        ) = (
            TIMER_TIM2.borrow(cs).borrow_mut().deref_mut(),
            LEDS.borrow(cs).borrow_mut().deref_mut(),
        ) {
            let state: bool = load_led_state();
            if state {
                leds[LedColor::Blue].on();
            } else {
                leds[LedColor::Blue].off();
            }
            store_led_state(!state);
            tim2.clear_interrupt(Event::TimeOut);
        }
    });
}