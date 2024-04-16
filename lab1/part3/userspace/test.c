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

int main()
{
    int fd = open("/dev/mymem", O_RDWR);
    if (fd == -1)
    {
        perror("Couldn't open file. ");
        return -1;
    }
    int region = ioctl(fd, MYMEM_IOCTL_ALLOC, BLOC_SIZE);
    printf("REGION: %d\n", region);
    int ctl_res = ioctl(fd, MYMEM_IOCTL_SETREGION, region);
    if (ctl_res < 0)
    {
        printf("Bad set region call\n");
        return -1;
    }
    char buf;

    clock_t write_start = clock();
    for (int i = 0; i < BLOC_SIZE; ++i)
    {
        buf = (char)(i * 13 % 254 + 1);

        int res = write(fd, &buf, 1);
        if (res < 0)
        {
            perror("What happened?: ");
            printf("BAD WRITE\n");
            return -1;
        }
    }
    clock_t write_end = clock();
    printf("Writing %d bytes took %lf seconds\n", BLOC_SIZE, ((double)(write_end - write_start)) / CLOCKS_PER_SEC);
    int seek_res = lseek(fd, 0, SEEK_SET);
    if (seek_res < 0)
    {
        printf("Bad seek\n");
        return -1;
    }
    clock_t read_start = clock();

    for (int i = 0; i < BLOC_SIZE; ++i)
    {
        int res = read(fd, &buf, 1);
        if (res < 0)
        {
            printf("BAD read\n");
            return -1;
        }
    }
    clock_t read_end = clock();
    printf("Reading %d bytes took %lf seconds\n", BLOC_SIZE, ((double)(read_end - read_start)) / CLOCKS_PER_SEC);
    int release_region_res = ioctl(fd, MYMEM_IOCTL_FREE, region);
    if (release_region_res < 0)
    {
        printf("Failed to release region: %d", region);
        return -1;
    }
    close(fd);
    return 0;
}
