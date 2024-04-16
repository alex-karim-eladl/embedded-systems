#include <stdio.h>
#include <unistd.h>
#include <time.h>
#include <errno.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <stdlib.h>
#include <pthread.h>

#define MYMEM_IOCTL_ALLOC 7
#define MYMEM_IOCTL_FREE 77
#define MYMEM_IOCTL_SETREGION 777
static int fd;
static int N;

void *increment_counter()
{
    for (int i = 0; i < N; ++i)
    {
        int seek_res = lseek(fd, 0, SEEK_SET);
        if (seek_res < 0)
        {
            printf("Bad seek\n");
            continue;
        }
        u_int64_t *counter = malloc(sizeof(u_int64_t));
        int res = read(fd, counter, sizeof(u_int64_t));
        if (res < 0)
        {
            printf("BAD read\n");
            free(counter);
            continue;
        }
        (*counter)++;
        seek_res = lseek(fd, 0, SEEK_SET);
        if (seek_res < 0)
        {
            printf("Bad seek\n");
            free(counter);
            continue;
        }
        res = write(fd, &(*counter), sizeof(u_int64_t));
        if (res < 0)
        {
            perror("What happened?: ");
            printf("BAD WRITE\n");
            free(counter);
            continue;
        }
        free(counter);
    }
    return NULL;
}

int main(int argc, char **argv)
{
    if (argc < 3)
    {
        printf("usage: ./unsafe_test N W\n");
        return -1;
    }
    N = atoi(argv[1]);
    int W = atoi(argv[2]);
    fd = open("/dev/mymem_smart", O_RDWR);
    if (fd == -1)
    {
        perror("Couldn't open file. ");
        return -1;
    }
    int region = ioctl(fd, MYMEM_IOCTL_ALLOC, sizeof(u_int64_t));
    printf("REGION: %d\n", region);
    int ctl_res = ioctl(fd, MYMEM_IOCTL_SETREGION, region);
    if (ctl_res < 0)
    {
        printf("Bad set region call\n");
        return -1;
    }
    u_int64_t zero = 0;
    int res = write(fd, &zero, sizeof(u_int64_t));
    if (res < 0)
    {
        perror("What happened?: ");
        printf("BAD WRITE\n");
        return -1;
    }
    int seek_res = lseek(fd, 0, SEEK_SET);
    if (seek_res < 0)
    {
        printf("Bad seek\n");
        return -1;
    }
    pthread_t thread_ids[W];
    printf("Before Thread\n");
    for (int i = 0; i < W; ++i)
    {
        pthread_create(&thread_ids[i], NULL, increment_counter, NULL);
    }
    for (int i = 0; i < W; ++i)
    {
        pthread_join(thread_ids[i], NULL);
    }
    u_int64_t counter;
    seek_res = lseek(fd, 0, SEEK_SET);
    if (seek_res < 0)
    {
        printf("Bad seek\n");
        return -1;
    }
    res = read(fd, &counter, sizeof(u_int64_t));
    if (res < 0)
    {
        printf("BAD read main\n");
        return -1;
    }

    printf("Counter value: %ld\n", counter);

    int release_region_res = ioctl(fd, MYMEM_IOCTL_FREE, region);
    if (release_region_res < 0)
    {
        printf("Failed to release region: %d", region);
        return -1;
    }
    
    close(fd);
    return 0;
}
