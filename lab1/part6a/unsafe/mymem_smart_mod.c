#include "mymem_smart_mod.h"

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Alex Karim El Adl");
MODULE_DESCRIPTION("Smart Memory Allocation Module for CPSC 425 LAB1");

extern int allocated;
extern int regions;
extern int device_is_open;
int get_allocated(char *buf, const struct kernel_param *kp);
int get_regions(char *buf, const struct kernel_param *kp);
int dummy_set(const char *input, const struct kernel_param *kp);
int device_open(struct inode *node, struct file *f);
int device_close(struct inode *node, struct file *f);
loff_t device_offset(struct file *f, loff_t offset, int whence);
long device_ioctl(struct file *f, unsigned int cmd, unsigned long arg);
void destroy_region_list(void);

dev_t smart_device;
static struct class *smart_dev_class;
static struct cdev mymem_smart_cdev;

int get_allocated_smart(char* buf, const struct kernel_param *kp){
    return get_allocated(buf, kp);
}

int get_regions_smart(char* buf, const struct kernel_param*kp){
    return get_regions(buf, kp);
}
int dummy_set_smart(const char* input, const struct kernel_param*kp){
    return dummy_set(input, kp);
}
const struct kernel_param_ops allocated_cbs = {
    .set = &dummy_set_smart,
    .get = &get_allocated_smart
};

const struct kernel_param_ops region_cbs = {
    .set = &dummy_set_smart,
    .get = &get_regions_smart
};

module_param_cb(allocated, &allocated_cbs, &allocated, 0660);
module_param_cb(regions, &region_cbs, &regions, 0660);

ssize_t device_read_smart(struct file * f, char * buf, size_t count, loff_t * offset){
    return read_active_smart(buf, count);
}

ssize_t device_write_smart(struct file * f, const char * buf, size_t count, loff_t * offset){
    return write_active_smart(buf, count);
}

static int device_open_smart(struct inode * node, struct file * f){
    return device_open(node, f);
}

static int device_close_smart(struct inode * node, struct file * f){
    return device_close(node, f);
}

loff_t device_offset_smart(struct file *f, loff_t offset, int whence) {
    return device_offset(f, offset, whence);
}

long device_ioctl_smart(struct file * f, unsigned int cmd, unsigned long arg){
    return device_ioctl(f, cmd, arg);
}

static struct file_operations fops = {
  .read = device_read_smart,
  .write = device_write_smart,
  .open = device_open_smart,
  .release = device_close_smart,
  .llseek = device_offset,
  .unlocked_ioctl = device_ioctl
};


static int __init smart_dev_init(void){
    printk(KERN_INFO "starting mymem_smart load...\n");

    if((alloc_chrdev_region(&smart_device, 0, 1, "mymem_smart_dev")) < 0){
        printk(KERN_INFO "Registering device failed\n");
        return -1;
    }

    cdev_init(&mymem_smart_cdev, &fops);

    if((cdev_add(&mymem_smart_cdev, smart_device, 1)) < 0){
            printk(KERN_INFO "Cannot add the device to the system\n");
    }

    smart_dev_class = class_create(THIS_MODULE, "mymem_smart_class");
    if(!smart_dev_class){
        unregister_chrdev_region(smart_device, 1);
        printk(KERN_INFO "Couldn't create class\n");
        return -1;
    }

    if((device_create(smart_dev_class,NULL,smart_device,NULL,MYMEM_SMART_NAME)) == NULL){
        class_destroy(smart_dev_class);
        unregister_chrdev_region(smart_device, 1);
        printk(KERN_INFO "Couldn't create device\n");
        return -1;
    }
    printk(KERN_INFO "mymem_smart successfully loaded\n");
    return 0;
}

static void __exit smart_dev_exit(void){
    device_destroy(smart_dev_class,smart_device);
    class_destroy(smart_dev_class);
    unregister_chrdev_region(smart_device, 1);
    destroy_region_list();
    printk(KERN_INFO "goodbye from mymem_smart\n");
}

module_init(smart_dev_init);
module_exit(smart_dev_exit);