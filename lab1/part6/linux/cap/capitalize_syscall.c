#include <linux/kernel.h>
#include <linux/errno.h>
#include <linux/slab.h>
#include <linux/string.h>
#include <linux/linkage.h>
#include <linux/syscalls.h>
#include <linux/uaccess.h>

SYSCALL_DEFINE2(capitalize_syscall, char __user *, input, char __user *, output)
{
	int i, res;
	char c;
	int input_length = strlen(input);
	char *kern_rep = kmalloc((sizeof(char) * input_length) + 1, GFP_USER);
	res = copy_from_user(kern_rep, input, input_length + 1);
	if (res != 0) {
		return -EINVAL;
	}
	printk(KERN_INFO "Capitalizing: %s\n", kern_rep);
	for (i = 0; i < input_length; ++i) {
		c = kern_rep[i];
		if (c >= 'a' && c <= 'z') {
			kern_rep[i] = c - 32;
		}
	}
	res = copy_to_user(output, kern_rep, input_length + 1);
	if (res != 0) {
		return -EINVAL;
	}
	kfree(kern_rep);
	return 0;
}