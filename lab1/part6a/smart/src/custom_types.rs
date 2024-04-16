/* automatically generated by rust-bindgen 0.59.2 */

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct region_node {
    pub allocated: ::std::os::raw::c_ulong,
    pub id: ::std::os::raw::c_uint,
    pub payload: *mut ::std::os::raw::c_char,
    pub next: *mut region_node,
    pub offset: ::std::os::raw::c_long,
}
#[test]
fn bindgen_test_layout_region_node() {
    assert_eq!(
        ::std::mem::size_of::<region_node>(),
        40usize,
        concat!("Size of: ", stringify!(region_node))
    );
    assert_eq!(
        ::std::mem::align_of::<region_node>(),
        8usize,
        concat!("Alignment of ", stringify!(region_node))
    );
    assert_eq!(
        unsafe { &(*(::std::ptr::null::<region_node>())).allocated as *const _ as usize },
        0usize,
        concat!(
            "Offset of field: ",
            stringify!(region_node),
            "::",
            stringify!(allocated)
        )
    );
    assert_eq!(
        unsafe { &(*(::std::ptr::null::<region_node>())).id as *const _ as usize },
        8usize,
        concat!(
            "Offset of field: ",
            stringify!(region_node),
            "::",
            stringify!(id)
        )
    );
    assert_eq!(
        unsafe { &(*(::std::ptr::null::<region_node>())).payload as *const _ as usize },
        16usize,
        concat!(
            "Offset of field: ",
            stringify!(region_node),
            "::",
            stringify!(payload)
        )
    );
    assert_eq!(
        unsafe { &(*(::std::ptr::null::<region_node>())).next as *const _ as usize },
        24usize,
        concat!(
            "Offset of field: ",
            stringify!(region_node),
            "::",
            stringify!(next)
        )
    );
    assert_eq!(
        unsafe { &(*(::std::ptr::null::<region_node>())).offset as *const _ as usize },
        32usize,
        concat!(
            "Offset of field: ",
            stringify!(region_node),
            "::",
            stringify!(offset)
        )
    );
}
#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct region_list {
    pub head: *mut region_node,
}
#[test]
fn bindgen_test_layout_region_list() {
    assert_eq!(
        ::std::mem::size_of::<region_list>(),
        8usize,
        concat!("Size of: ", stringify!(region_list))
    );
    assert_eq!(
        ::std::mem::align_of::<region_list>(),
        8usize,
        concat!("Alignment of ", stringify!(region_list))
    );
    assert_eq!(
        unsafe { &(*(::std::ptr::null::<region_list>())).head as *const _ as usize },
        0usize,
        concat!(
            "Offset of field: ",
            stringify!(region_list),
            "::",
            stringify!(head)
        )
    );
}