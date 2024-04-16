#include <linux/uaccess.h>


extern unsigned long copy_to_user_c(void *to, const void *from, unsigned long count) {
    return copy_to_user(to, from, count);
};

extern unsigned long copy_from_user_c(void *to, const void *from, unsigned long count){
    return copy_from_user(to, from, count);
}
