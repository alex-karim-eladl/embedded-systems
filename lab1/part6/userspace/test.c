#include <sys/syscall.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

char birthday[] = {"Alex Karim El Adl's birthday is 12/01/2000"};

int main(){
    char* output = malloc(sizeof(char)*64);
    int i;
    int res = syscall(441, birthday, output);
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