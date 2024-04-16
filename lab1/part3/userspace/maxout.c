#include <stdio.h>
#include <unistd.h>
#include <time.h>
#include <errno.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <stdlib.h>

#define MYMEM_IOCTL_ALLOC 7
#define MYMEM_IOCTL_FREE 77
#define MYMEM_IOCTL_SETREGION 777
#define BLOC_SIZE 524288

int main(){
    int fd = open("/dev/mymem", O_RDWR);
    if(fd == -1){
        perror("Couldn't open file. ");
        return -1;
    }
    int region = ioctl(fd, MYMEM_IOCTL_ALLOC, BLOC_SIZE);
    printf("REGION: %d\n", region);
    int ctl_res = ioctl(fd, MYMEM_IOCTL_SETREGION, region);
    if(ctl_res < 0){
        printf("Bad set region call\n");
        close(fd);
        return -1;
    }
    region = ioctl(fd, MYMEM_IOCTL_ALLOC, BLOC_SIZE);
    printf("REGION: %d\n", region);
    ctl_res = ioctl(fd, MYMEM_IOCTL_SETREGION, region);
    if(ctl_res < 0){
        printf("Bad set region call\n");
        close(fd);
        return -1;
    }
}