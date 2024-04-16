#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Alex Karim El Adl");
MODULE_DESCRIPTION("Hello World for CPSC 425 LAB1");

static int __init hello(void){
	printk(KERN_INFO "Hello world!\n");
	return 0;
}

static void __exit goodbye(void){
	printk(KERN_INFO "Goodbye world!\n");
}

module_init(hello);
module_exit(goodbye);

