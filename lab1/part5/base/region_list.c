#include <linux/kernel.h>
#include <linux/slab.h>
#include <linux/uaccess.h>
#include <linux/module.h>  
#include "region_list.h"

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Alex Karim El Adl");
MODULE_DESCRIPTION("Memory Allocation module for CPSC 425 LAB1");

static region_list REGIONS;
static unsigned int next_id;
region_node* active_region;

size_t add(size_t num_bytes) {
    region_node* node = kmalloc(sizeof(region_node), GFP_USER);
    if(!node){
        printk(KERN_INFO "No memory for the node\n");
        return -ENOMEM;
    }
    node->offset = 0;
    node->next = REGIONS.head;
    node->id = next_id++;
    node->allocated = num_bytes;
    node->payload = kmalloc(sizeof(char)*num_bytes, GFP_USER);
    REGIONS.head = node;
    return node->id;
}


unsigned int set_region(unsigned int id){
    region_node* curr;
    for(curr = REGIONS.head; curr != NULL; curr = curr -> next){
        if(curr->id == id){
            printk(KERN_INFO "Current region %d\n", curr->id);
            active_region = curr;
            return id;
        }
    }
    printk(KERN_INFO "Bad Region %d\n", id);
    return -EINVAL;
}


unsigned int remove(unsigned int id) {
    region_node* last = NULL;
    region_node* del_node = NULL;
    region_node* curr;
    unsigned int ret = 0;
    for(curr = REGIONS.head; curr != NULL; curr = curr -> next){
        if(curr->id == id){
            del_node = curr;
            break;
        }
        last = curr;
    }
    if(last && del_node){
        last-> next = del_node-> next;
        ret = del_node->allocated + sizeof(region_node);
        kfree(del_node->payload);
        kfree(del_node);
    }
    else if(del_node){
        REGIONS.head = del_node->next;
        ret = del_node->allocated + sizeof(region_node);
        kfree(del_node->payload);
        kfree(del_node);
    }
    return ret;
}


int get_region_allocs(char* buf){
    region_node* curr;
    char* currpos = buf;
    for(curr = REGIONS.head; curr != NULL; curr = curr -> next){
        currpos += sprintf(currpos, "Region(%d): %ld\n", curr->id, curr->allocated);
    }
    return (int)(currpos - buf);
}


void destroy_region_list(void){
    region_node* curr = NULL;
    region_node* next = NULL;
    for(curr = REGIONS.head; curr != NULL; curr = next){
        next = curr->next;
        remove(curr->id);
    }
}


ssize_t read_active(struct file* f, char* buf, size_t count, loff_t* off){
    if(!active_region){
        printk(KERN_INFO "(R) No active region\n");
        return -EINVAL;
    }
    if(active_region->offset >= active_region->allocated){
        printk(KERN_INFO "(R) Offset off the deep end\n");
        return -EINVAL;
    }
    
    if(copy_to_user(buf, &(active_region->payload[active_region->offset++]), count)){
        printk(KERN_INFO "(R) Issue while copying to the user\n");
        return -EFAULT;
    }
    return count;
}


ssize_t write_active(struct file*f, const char* buf, size_t count, loff_t* off){
    if(!active_region){
        printk(KERN_INFO "(W) No active region\n");
        return -EINVAL;
    }
    if(active_region->offset >= active_region->allocated){
        printk(KERN_INFO "(W) Offset off the deep end\n");
        return -EINVAL;
    }
    if(copy_from_user(&(active_region->payload[active_region->offset++]), buf, count)){
        printk(KERN_INFO "(W) Issue while copying from user\n");
        return -EFAULT;
    }
    return count;
}


loff_t seek_active(struct file* f, loff_t offset, int whence){
    if(!active_region){
        printk(KERN_INFO "(S) No active region\n");
        return -EINVAL;
    }
    if(whence == SEEK_SET){
        if(offset < 0 || offset >= active_region->allocated){
            printk(KERN_INFO "Set out of bounds\n");
            return -EINVAL;
        }
        active_region->offset = offset;
    } else if(whence == SEEK_CUR){
        if(active_region->offset + offset < 0 || active_region->offset + offset >= active_region->allocated){
            printk(KERN_INFO "CUR out of bounds\n");
            return -EINVAL;
        }
        active_region->offset += offset;
    } else if(whence == SEEK_END){
        if(offset > 0 || active_region->allocated + offset < 0){
            printk(KERN_INFO "End out of bounds\n");
            return -EINVAL;
        }
        active_region->offset = active_region->allocated + offset;
    } else {
        printk(KERN_INFO "Bad Seek arg\n");
        return -EINVAL;
    }
    return active_region->offset;
}

EXPORT_SYMBOL(add);
EXPORT_SYMBOL(set_region);
EXPORT_SYMBOL(remove);
EXPORT_SYMBOL(get_region_allocs);
EXPORT_SYMBOL(destroy_region_list);
EXPORT_SYMBOL(seek_active);
EXPORT_SYMBOL(active_region);
