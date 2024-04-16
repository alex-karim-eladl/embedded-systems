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

int main(int argc, char**argv){
    if(argc < 2){
        printf("Please supply a region.\n");
        return -1;
    }
    
    int fd = open("/dev/mymem", O_RDWR);
    if(fd == -1){
        perror("Couldn't open file. ");
        return -1;
    }
    int region = atoi(argv[1]);
    int release_region_res = ioctl(fd, MYMEM_IOCTL_FREE, region);
    if(release_region_res < 0){
        printf("Failed to release region: %d", region);
        return -1;
    }
    close(fd);
    return 0;
}