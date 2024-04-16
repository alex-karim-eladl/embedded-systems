#![no_std]
#![feature(asm_const)]
#![feature(start)]
use core::arch::asm;
use core::panic::PanicInfo;

const REDLED: u32 = 1;
extern "C" {
    fn sys_toggle_led(led: u32);
    fn sys_delay_ms(delay: u32);
}

#[panic_handler]
#[linkage="extern_weak"]
fn panic_hndlr(_arg: &PanicInfo) -> ! {
    loop {}
}

3[no_mangle]
fn flash_red() {
    loop {
        sys_toggle_led(RED_LED);
        sys_delay_ms(1000);
    }
}