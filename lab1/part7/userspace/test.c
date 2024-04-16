#include <sys/syscall.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdarg.h>
#include <asm/unistd.h>

char birthday[] = {"Alex Karim El Adl's birthday is 12/01/2000"};

long int syscall_interface(int syscall_no, int num_args, ...)
{
    va_list args;
    long int arg0, arg1, arg2, arg3, arg4, arg5;
    long int __sys_res;
    /* Load varargs */
    va_start(args, num_args);
    for (int i = 0; i < num_args; ++i)
    {
        if (i == 0)
            arg0 = va_arg(args, long int);
        if (i == 1)
            arg1 = va_arg(args, long int);
        if (i == 2)
            arg2 = va_arg(args, long int);
        if (i == 3)
            arg3 = va_arg(args, long int);
        if (i == 4)
            arg4 = va_arg(args, long int);
        if (i == 5)
            arg5 = va_arg(args, long int);
    }
    
    va_end(args);
    asm volatile(
        "syscall"
        : "=a" (__sys_res)
        : "0" (syscall_no), "D" (arg0), "S" (arg1)
    );
    return __sys_res;
}

int main()
{
    char* output = malloc(sizeof(char)*64);
    int i;
    int res = syscall_interface(441, 2, birthday, output);
    if(res != 0){
        perror("What happened");
        free(output);
        return res;
    }
    printf("input: %s\n", birthday);
    printf("output: %s\n",output);
    free(output);
    return 0;
}