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

int main() {
    int fd = open("/dev/mymem", O_RDWR);
    if(fd == -1){
        perror("Couldn't open file. ");
        return -1;
    }
    int region = ioctl(fd, MYMEM_IOCTL_ALLOC, 10);
    printf("REGION: %d\n", region);
    close(fd);
    return 0;
}