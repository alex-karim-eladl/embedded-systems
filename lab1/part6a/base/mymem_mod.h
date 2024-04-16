#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/kdev_t.h>
#include <linux/fs.h>
#include <linux/string.h>
#include <linux/kobject.h>
#include <linux/sysfs.h>
#include <linux/moduleparam.h>
#include <linux/device.h>
#include <linux/cdev.h>
#include "region_list.h"

#ifndef __MYMEM_MOD_H__
#define __MYMEM_MOD_H__

#define MAX_MEM 1048576 
#define MYMEM_IOCTL_ALLOC 7
#define MYMEM_IOCTL_FREE 77
#define MYMEM_IOCTL_SETREGION 777

int get_allocated(char* buf, const struct kernel_param *kp);

int get_regions(char* buf, const struct kernel_param*kp);

int dummy_set(const char* input, const struct kernel_param*kp);

int device_open(struct inode * node, struct file * f);

int device_close(struct inode * node, struct file * f);

ssize_t device_read(struct file * f, char * buf, size_t count, loff_t * offset);

ssize_t device_write(struct file * f, const char * buf, size_t count, loff_t * offset);

loff_t device_offset(struct file *f, loff_t offset, int whence);

long device_ioctl(struct file * f, unsigned int cmd, unsigned long arg);

static int __init dev_init(void);

static void __exit dev_exit(void);

#endif
