#![no_std]
#![feature(asm_const)]
#![feature(start)]
#![feature(linkage)]
use core::arch::asm;
use core::panic::PanicInfo;

const ORANGE_LED: u32 = 2;
extern "C" {
    fn sys_toggle_led(led: u32);
    fn sys_delay_ms(delay: u32);
}

#[panic_handler]
#[linkage = "extern_weak"]
fn panic_hndlr(_arg: &PanicInfo) -> ! {
    loop {}
}

#[no_mangle]
fn flash_orange() {
    loop {
        unsafe {
            sys_toggle_led(ORANGE_LED);
            sys_delay_ms(1000);
        }
    }
}
