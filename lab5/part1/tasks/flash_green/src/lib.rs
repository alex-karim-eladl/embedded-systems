#![no_std]
#![feature(asm_const)]
#![feature(start)]
#![feature(linkage)]
use core::arch::asm;
use core::panic::PanicInfo;

const GREEN_LED: u32 = 0;
extern "C" {
    fn sys_toggle_led(led: u32);
    fn sys_delay_ms(delay: u32);
}

#[panic_handler]
#[linkage="extern_weak"]
fn panic_hndlr(_arg: &PanicInfo) -> ! {
    loop {}
}

#[no_mangle]
fn flash_green() {
    loop {
        sys_toggle_led(GREEN_LED);
        sys_delay_ms(1000);
    }
}