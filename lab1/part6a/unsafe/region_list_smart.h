#include <linux/module.h>    // included for all kernel modules
#include <linux/kernel.h>    // included for KERN_INFO
#include <linux/init.h>      // included for __init and __exit macros
#include <linux/kdev_t.h>
#include <linux/fs.h>
#include <linux/errno.h>
#include <linux/kernel.h>
#include <linux/slab.h>
#include <linux/uaccess.h>

extern unsigned long read_active_smart(void* buf, unsigned long count);

extern unsigned long write_active_smart(const void* buf, unsigned long count);