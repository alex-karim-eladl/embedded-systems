#include "mymem_mod.h"
#define MYMEM_DEV_NAME "mymem"

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Alex Karim El Adl");
MODULE_DESCRIPTION("Memory Allocation module for CPSC 425 LAB1");

static int allocated;
static int regions;
dev_t device;
static struct class *dev_class;
static struct cdev mymem_cdev;
static int device_is_open = 0;

static int get_allocated(char* buf, const struct kernel_param *kp){
    return sprintf(buf, "%d\n",allocated);
}

static int get_regions(char* buf, const struct kernel_param*kp){
    return get_region_allocs(buf);
}
static int dummy_set(const char* input, const struct kernel_param*kp){
    return -EINVAL;
}

const struct kernel_param_ops allocated_cbs = {
    .set = &dummy_set,
    .get = &get_allocated
};

const struct kernel_param_ops region_cbs = {
    .set = &dummy_set,
    .get = &get_regions
};

module_param_cb(allocated, &allocated_cbs, &allocated, 0660);
module_param_cb(regions, &region_cbs, &regions, 0660);

static int device_open(struct inode * node, struct file * f){
    if(device_is_open){
        printk(KERN_INFO "Device is already open in another process\n");
        return -EBUSY;
    }
    ++device_is_open;
    return 0;
}

static int device_close(struct inode * node, struct file * f){
    --device_is_open;
    return 0;
}

ssize_t device_read(struct file * f, char * buf, size_t count, loff_t * offset){
    if(count != 1){
        return -EINVAL;
    }
    return read_active(f, buf, count, offset);
}

ssize_t device_write(struct file * f, const char * buf, size_t count, loff_t * offset){
    if(count != 1){
        return -EINVAL;
    }
    return write_active(f, buf, count, offset);
}

loff_t device_offset(struct file *f, loff_t offset, int whence) {
    return seek_active(f, offset, whence);
}

long device_ioctl(struct file * f, unsigned int cmd, unsigned long arg){
    if(cmd == MYMEM_IOCTL_ALLOC){
        unsigned int new_id;
        if(allocated + arg + sizeof(region_node) > MAX_MEM){
            printk(KERN_INFO "Would exceed memory limits");
            return -ENOMEM;
        }
        new_id = add(arg);
        printk(KERN_INFO "NEW_ID: %d WITH BYTES %lu\n", new_id, arg);
        allocated += (arg + sizeof(region_node));
        return new_id;
    } else if(cmd == MYMEM_IOCTL_FREE){
        unsigned int removed_bytes = remove(arg);
        printk(KERN_INFO "Freeing %lu. %d bytes\n", arg, removed_bytes);
        allocated -= removed_bytes;
        return 0;
    } else if(cmd == MYMEM_IOCTL_SETREGION){
        printk(KERN_INFO "Setting region\n");
        return set_region(arg);
    } else{
        printk(KERN_INFO "ioctl Bad CMD\n");
        return -ENOTTY;
    }
}

static struct file_operations fops = {
  .read = device_read,
  .write = device_write,
  .open = device_open,
  .release = device_close,
  .llseek = device_offset,
  .unlocked_ioctl = device_ioctl
};


static int __init dev_init(void){
    printk(KERN_INFO "starting mymem load...\n");

    if((alloc_chrdev_region(&device, 0, 1, "mymem_dev")) < 0){
        printk(KERN_INFO "Registering device failed\n");
        return -1;
    }

    cdev_init(&mymem_cdev, &fops);

    if((cdev_add(&mymem_cdev, device, 1)) < 0){
            printk(KERN_INFO "Cannot add the device to the system\n");
    }

    dev_class = class_create(THIS_MODULE, "mymem_class");
    if(!dev_class){
        unregister_chrdev_region(device, 1);
        printk(KERN_INFO "Couldn't create class\n");
        return -1;
    }

    if((device_create(dev_class,NULL,device,NULL,MYMEM_DEV_NAME)) == NULL){
        class_destroy(dev_class);
        unregister_chrdev_region(device, 1);
        printk(KERN_INFO "Couldn't create device\n");
        return -1;
    }
    printk(KERN_INFO "mymem successfully loaded\n");
    return 0;
}

static void __exit dev_exit(void){
    device_destroy(dev_class,device);
    class_destroy(dev_class);
    unregister_chrdev_region(device, 1);
    destroy_region_list();
    printk(KERN_INFO "goodbye from mymem\n");
}

module_init(dev_init);
module_exit(dev_exit);
