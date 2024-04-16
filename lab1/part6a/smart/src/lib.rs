#![crate_type = "cdylib"]
include!("custom_types.rs");
use core::ffi::c_void;

extern "C" {
    pub static mut active_region: *mut region_node;
    fn copy_from_user_c(to: *mut c_void, from: *const u8, count: u64) -> u64;
    fn copy_to_user_c(to: *mut c_void, from: *const u8, count: u64) -> u64;
}

#[no_mangle]
pub extern "C" fn read_active_smart(buf: *mut c_void, count: u64) -> u64 {
    unsafe {
        if active_region.is_null() {
            return -22i64 as u64;
        }

        if (*active_region).offset + (count as i64) - 1 >= (*active_region).allocated as i64 {
            return -22i64 as u64;
        }
        let addy = (*active_region)
            .payload
            .offset((*active_region).offset as isize) as *mut u8;
        if copy_to_user_c(buf, addy, count) != 0 {
            return -22i64 as u64;
        }
        (*active_region).offset += count as i64;
        return count;
    }
}

#[no_mangle]
pub extern "C" fn write_active_smart(buf: *const u8, count: u64) -> u64 {
    unsafe {
        if active_region.is_null() {
            return -22i64 as u64;
        }
        if (*active_region).offset + (count as i64) - 1 >= (*active_region).allocated as i64 {
            return -22i64 as u64;
        }
        let addy = (*active_region)
            .payload
            .offset((*active_region).offset as isize) as *mut c_void;
        if copy_from_user_c(addy, buf, count) != 0 {
            return -22i64 as u64;
        }
        (*active_region).offset += count as i64;
        return count;
    }
}
