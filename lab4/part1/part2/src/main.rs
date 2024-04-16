#![no_main]
#![no_std]

use panic_halt as _;

use stm32f407g_disc as board;

use crate::board::{
    hal::stm32,
    hal::{
        delay::Delay,
        prelude::*,
        time::Hertz,
        timer::{Event, Timer},
    },
    led::{LedColor, Leds, Led},
};
use core::cell::RefCell;
use core::ops::DerefMut;

use crate::board::interrupt;
use cortex_m::interrupt::{free, Mutex};
use cortex_m::peripheral::Peripherals;
use cortex_m_rt::entry;
use stm32::{Interrupt};

static TIMER_TIM2: Mutex<RefCell<Option<Timer<stm32::TIM2>>>> = Mutex::new(RefCell::new(None));

fn flash_blue(blue: &mut Led, delay: &mut Delay) {
    loop {
        blue.on();
        delay.delay_ms(1000u32);
        blue.off();
        delay.delay_ms(1000u32);
    }
}

#[entry]
fn main() -> ! {
    if let (Some(p), Some(cp)) = (stm32::Peripherals::take(), Peripherals::take()) {
        let gpiod = p.GPIOD.split();

        // Initialize on-board LEDs
        let mut leds = Leds::new(gpiod);
        p.RCC.ahb1enr.modify(|_, w| w.gpioden().enabled());
        p.RCC.apb2enr.write(|w| w.syscfgen().enabled());
        // Constrain clock registers
        let rcc = p.RCC.constrain();
        // Configure clock to 100 MHz (i.e. the maximum) and freeze it
        let clocks = rcc.cfgr.sysclk(100.mhz()).freeze();
        // Get delay provider
        let mut delay = Delay::new(cp.SYST, clocks);
        let mut timer = Timer::tim2(p.TIM2, Hertz(100), clocks);
        timer.listen(Event::TimeOut);
        free(|cs| {
            TIMER_TIM2.borrow(cs).replace(Some(timer));
        });
        let blue_light = &mut leds[LedColor::Blue];
        let mut nvic = cp.NVIC;
        unsafe {
            nvic.set_priority(Interrupt::TIM2, 1);
            cortex_m::peripheral::NVIC::unmask(Interrupt::TIM2);
        }
        cortex_m::peripheral::NVIC::unpend(Interrupt::TIM2);
        flash_blue(blue_light, &mut delay);
    }

    loop {
        continue;
    }
} 

#[interrupt]
fn TIM2() {
    free(|cs| {
        stm32::NVIC::unpend(Interrupt::TIM2);
        if let Some(ref mut tim2) = TIMER_TIM2.borrow(cs).borrow_mut().deref_mut() {
            tim2.clear_interrupt(Event::TimeOut);
        }
    });
}