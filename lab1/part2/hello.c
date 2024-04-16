#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/kobject.h>
#include <linux/sysfs.h>
#include <linux/string.h>
#include <linux/fs.h>
#include <linux/moduleparam.h>


MODULE_LICENSE("GPL");
MODULE_AUTHOR("Alex Karim El Adl");
MODULE_DESCRIPTION("Hello World for CPSC 425 LAB1");

static int enable_logging;
static int double_me;


static int set_enable_logging(const char* input, const struct kernel_param *kp){
	int tmp = 0, res;
	res = kstrtoint(input, 10, &tmp);
	if(res != 0 || (tmp != 0 && tmp != 1)){
		printk(KERN_INFO "There's an error\n");
		return -EINVAL;
	}
	return param_set_int(input, kp);
}

static int get_enable_logging(char* buf, const struct kernel_param *kp){
	if(enable_logging){
		strcpy(buf, "Logging Enabled(1)\n");
	} else{
		strcpy(buf, "Logging Disabled(0)\n");
	}
	return strlen(buf);
}

static int set_double_me(const char* input, const struct kernel_param *kp){
	int tmp = 0, res;
	res = kstrtoint(input, 10, &tmp);
	if(res != 0){
		if(enable_logging){
			printk(KERN_INFO "Input was not a valid integer");
		}
		return -EINVAL;
	}
	if(enable_logging){
		printk(KERN_INFO "Doubling %d to get %d\n",tmp, 2*tmp);
	}
	return param_set_int(input, kp);
}

static int get_double_me(char* buf, const struct kernel_param *kp){
	return sprintf(buf, "%d\n", double_me*2);
}

const struct kernel_param_ops double_me_ops = {
	.set = &set_double_me,
	.get = &get_double_me
};

const struct kernel_param_ops enable_logging_ops = {
	.set = &set_enable_logging,
	.get = &get_enable_logging
};

module_param_cb(double_me, &double_me_ops, &double_me, 0660);
module_param_cb(enable_logging, &enable_logging_ops, &enable_logging, 0660);

static int __init hello(void){
		
	if(enable_logging){
		printk(KERN_INFO "Hello world!\n");
	}
	return 0;
}

static void __exit goodbye(void){
	if(enable_logging){
		printk(KERN_INFO "Goodbye world!\n");
	}
}

module_init(hello);
module_exit(goodbye);

