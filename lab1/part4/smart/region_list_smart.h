#include <linux/module.h>    // included for all kernel modules
#include <linux/kernel.h>    // included for KERN_INFO
#include <linux/init.h>      // included for __init and __exit macros
#include <linux/kdev_t.h>
#include <linux/fs.h>
#include <linux/errno.h>
#include <linux/kernel.h>
#include <linux/slab.h>
#include <linux/uaccess.h>

typedef struct region_node region_node;

struct region_node{
    size_t allocated;
    unsigned int id;
    char* payload;
    region_node* next;
    loff_t offset;
};

typedef struct{
    region_node* head;
} region_list;

ssize_t read_active_smart(struct file* f, char* buf, size_t count, loff_t* off);

ssize_t write_active_smart(struct file*f, const char* buf, size_t count, loff_t* off);