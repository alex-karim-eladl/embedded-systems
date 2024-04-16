
#include "region_list_smart.h"

extern region_node* active_region;

ssize_t read_active_smart(struct file* f, char* buf, size_t count, loff_t* off){
    if(!active_region){
        printk(KERN_INFO "(R) No active region\n");
        return -EINVAL;
    }

    if(active_region->offset + count - 1 >= active_region->allocated){
        printk(KERN_INFO "(R) Offset off the deep end\n");
        return -EINVAL;
    }
    
    if(copy_to_user(buf, &(active_region->payload[active_region->offset]), count)){
        printk(KERN_INFO "(R) Issue while copying to the user\n");
        return -EFAULT;
    }
    active_region->offset += count;
    return count;
}

ssize_t write_active_smart(struct file*f, const char* buf, size_t count, loff_t* off){
    if(!active_region){
        printk(KERN_INFO "(W) No active region\n");
        return -EINVAL;
    }
    if(active_region->offset + count - 1 >= active_region->allocated){
        printk(KERN_INFO "(W) Offset off the deep end\n");
        return -EINVAL;
    }
    if(copy_from_user(&(active_region->payload[active_region->offset]), buf, count)){
        printk(KERN_INFO "(W) Issue while copying from user\n");
        return -EFAULT;
    }
    active_region->offset += count;
    return count;
}