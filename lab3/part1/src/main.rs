#![no_main]
#![no_std]

use panic_halt as _;

use stm32f407g_disc as board;

use crate::board::{
    hal::stm32,
    hal::{
        delay::Delay,
        gpio::{gpioa::PA0, Edge, ExtiPin, Input, PullDown},
        prelude::*,
    },
    led::{LedColor, Leds},
};
use core::cell::RefCell;
use core::ops::DerefMut;

use crate::board::interrupt;
use cortex_m::interrupt::{free, Mutex};
use cortex_m::peripheral::Peripherals;
use cortex_m_rt::entry;
use stm32::{Interrupt, EXTI};

static PAUSED: Mutex<RefCell<bool>> = Mutex::new(RefCell::new(false));
static EXTI: Mutex<RefCell<Option<EXTI>>> = Mutex::new(RefCell::new(None));
static BUTTON: Mutex<RefCell<Option<PA0<Input<PullDown>>>>> = Mutex::new(RefCell::new(None));

fn check_paused() -> bool {
    let mut halted = false;
    let mut iters = 0;
    loop {
        free(|cs| {
            if let (&mut ref mut paused) = (PAUSED.borrow(cs).borrow_mut().deref_mut()) {
                if *paused == true {
                    halted = true;
                } else {
                    halted = false;
                }
            }
        });
        if !halted {
            if iters == 0 {
                return false;
            } else {
                return true;
            }
        }
        iters += 1;
    }
}

#[entry]
fn main() -> ! {
    if let (Some(mut p), Some(cp)) = (stm32::Peripherals::take(), Peripherals::take()) {
        let gpiod = p.GPIOD.split();

        // Initialize on-board LEDs
        let mut leds = Leds::new(gpiod);
        p.RCC.ahb1enr.modify(|_, w| w.gpioaen().enabled());
        p.RCC.ahb1enr.modify(|_, w| w.gpioden().enabled());
        p.RCC.apb2enr.write(|w| w.syscfgen().enabled());
        // Constrain clock registers
        let rcc = p.RCC.constrain();
        // Configure clock to 100 MHz (i.e. the maximum) and freeze it
        let clocks = rcc.cfgr.sysclk(100.mhz()).freeze();
        let gpioa = p.GPIOA.split();
        let mut board_btn = gpioa.pa0.into_pull_down_input();
        board_btn.make_interrupt_source(&mut p.SYSCFG);
        board_btn.enable_interrupt(&mut p.EXTI);
        board_btn.trigger_on_edge(&mut p.EXTI, Edge::RISING_FALLING);
        // Get delay provider
        let mut delay = Delay::new(cp.SYST, clocks);
        let exti = p.EXTI;
        free(|cs| {
            EXTI.borrow(cs).replace(Some(exti));
            BUTTON.borrow(cs).replace(Some(board_btn));
        });

        let mut nvic = cp.NVIC;
        unsafe {
            nvic.set_priority(Interrupt::EXTI0, 1);
            cortex_m::peripheral::NVIC::unmask(Interrupt::EXTI0);
        }
        cortex_m::peripheral::NVIC::unpend(Interrupt::EXTI0);
        'start_from_green: loop {
            // Turn LEDs on one after the other with 500ms delay between them
            for color in 0..4 {
                leds[color].on();
                if check_paused() {
                    leds[color].off();
                    continue 'start_from_green;
                }
                delay.delay_ms(500_u16);
                if check_paused() {
                    leds[color].off();
                    continue 'start_from_green;
                }
                leds[color].off();
            }
        }
    }

    loop {
        continue;
    }
}

#[interrupt]
fn EXTI0() {
    free(|cs| {
        // Obtain all Mutex protected resources

        if let (&mut ref mut paused, &mut Some(ref mut btn), &mut Some(ref mut exti)) = (
            PAUSED.borrow(cs).borrow_mut().deref_mut(),
            BUTTON.borrow(cs).borrow_mut().deref_mut(),
            EXTI.borrow(cs).borrow_mut().deref_mut(),
        ) {
            if *paused == false {
                *paused = true;
            } else {
                *paused = false;
            }
            btn.clear_interrupt_pending_bit(exti);
        }
    });
}
