#![no_main]
#![no_std]

use panic_halt as _;

use stm32f407g_disc as board;

use crate::board::{
    hal::stm32,
    hal::{
        delay::Delay,
        gpio::{gpioc::PC7, Edge, ExtiPin, Input, Floating},
        prelude::*,
        time::Hertz,
        timer::{Event, Timer},
    },
    led::{LedColor, Leds},
};
use core::cell::RefCell;
use core::ops::DerefMut;

use crate::board::interrupt;
use cortex_m::interrupt::{free, Mutex};
use cortex_m::peripheral::Peripherals;
use cortex_m_rt::entry;
use stm32::{Interrupt, EXTI, GPIOC};

static TIMER_TIM2: Mutex<RefCell<Option<Timer<stm32::TIM2>>>> = Mutex::new(RefCell::new(None));
static PAUSED: Mutex<RefCell<bool>> = Mutex::new(RefCell::new(false));
static EXTI: Mutex<RefCell<Option<EXTI>>> = Mutex::new(RefCell::new(None));
static TOUCH_PIN: Mutex<RefCell<Option<PC7<Input<Floating>>>>> = Mutex::new(RefCell::new(None));

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
        let mut timer = Timer::tim2(p.TIM2, Hertz(100), clocks);
        timer.listen(Event::TimeOut);
        let gpioc = p.GPIOC.split();
        let mut touch_pin_out = gpioc.pc7.into_push_pull_output();
        touch_pin_out.set_high();
        let mut touch_pin_in = touch_pin_out.into_floating_input();
        touch_pin_in.make_interrupt_source(&mut p.SYSCFG);
        touch_pin_in.enable_interrupt(&mut p.EXTI);
        touch_pin_in.trigger_on_edge(&mut p.EXTI, Edge::FALLING);
        // Get delay provider
        let mut delay = Delay::new(cp.SYST, clocks);
        let exti = p.EXTI;
        free(|cs| {
            EXTI.borrow(cs).replace(Some(exti));
            TIMER_TIM2.borrow(cs).replace(Some(timer));
            TOUCH_PIN.borrow(cs).replace(Some(touch_pin_in));
        });

        let mut nvic = cp.NVIC;
        unsafe {
            nvic.set_priority(Interrupt::EXTI9_5, 1);
            cortex_m::peripheral::NVIC::unmask(Interrupt::EXTI9_5);
            nvic.set_priority(Interrupt::TIM2, 2);
            cortex_m::peripheral::NVIC::unmask(Interrupt::TIM2);
        }
        cortex_m::peripheral::NVIC::unpend(Interrupt::EXTI9_5);
        cortex_m::peripheral::NVIC::unpend(Interrupt::TIM2);
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
fn EXTI9_5() {
    free(|cs| {
        // Obtain all Mutex protected resources

        if let (&mut ref mut paused, &mut Some(ref mut exti), &mut Some(ref mut touch_pin)) = (
            PAUSED.borrow(cs).borrow_mut().deref_mut(),
            EXTI.borrow(cs).borrow_mut().deref_mut(),
            TOUCH_PIN.borrow(cs).borrow_mut().deref_mut(),
        ) {
            if *paused == false {
                *paused = true;
            } else {
                *paused = false;
            }
            touch_pin.clear_interrupt_pending_bit(exti);
        }
    });
}

#[interrupt]
fn TIM2() {
    free(|cs| {
        stm32::NVIC::unpend(Interrupt::TIM2);
        if let (Some(ref mut tim2), Some(ref mut touch_pin), &mut Some(ref mut exti), mut p) = (
            TIMER_TIM2.borrow(cs).borrow_mut().deref_mut(),
            TOUCH_PIN.borrow(cs).borrow_mut().deref_mut(),
            EXTI.borrow(cs).borrow_mut().deref_mut(),
            unsafe {stm32::Peripherals::steal()}
        ) {
            tim2.clear_interrupt(Event::TimeOut);
            let gpioc = p.GPIOC.split();
            let mut touch_pin_out = gpioc.pc7.into_push_pull_output();
            touch_pin_out.set_high();
            let mut touch_pin_in = touch_pin_out.into_floating_input();
            touch_pin_in.trigger_on_edge(&mut p.EXTI, Edge::FALLING);
        }
    });
}
