#![no_std]
#![feature(asm_const)]
#![feature(start)]
#![feature(linkage)]
use core::panic::PanicInfo;

const BLUE_LED: u32 = 3;
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
extern "C" fn flash_blue() {
    loop {
        unsafe {
            sys_toggle_led(BLUE_LED);
            sys_delay_ms(1000);
        }
    }
}
