#include <linux/module.h>    // included for all kernel modules
#include <linux/kernel.h>    // included for KERN_INFO
#include <linux/init.h>      // included for __init and __exit macros
#include <linux/kdev_t.h>
#include <linux/fs.h>
#include <linux/errno.h>

#ifndef __REGION_LIST_H__
#define __REGION_LIST_H__

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

size_t add(size_t num_bytes);

unsigned int set_region(unsigned int id);

unsigned int remove(unsigned int id);

int get_region_allocs(char* buf);

void destroy_region_list(void);

ssize_t read_active(struct file* f, char* buf, size_t count, loff_t* off);

ssize_t write_active(struct file*f, const char* buf, size_t count, loff_t* off);

loff_t seek_active(struct file* f, loff_t offset, int whence);

#endif
