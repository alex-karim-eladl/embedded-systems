#include <stdio.h>
#include <unistd.h>
#include <time.h>
#include <errno.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <stdlib.h>
#include <string.h>

#define MYMEM_IOCTL_ALLOC 7
#define MYMEM_IOCTL_FREE 77
#define MYMEM_IOCTL_SETREGION 777
#define BLOC_SIZE 524288

char *essay = "Visual Studio Code: The Sharpest Tool in the Developer's Shed? I hated Visual Studio Code. It is widely known as the most loved code editor among developers. However, when I first tried to use it, I couldn't understand why many people felt that way. I disliked how it put me in control of everything during development. It took away the guardrails that Integrated Development Environments (IDEs) provided, but I still had to make sure I didn't veer off and write code that crashed. I didn't even know how to create new executable files or run my code. I was so used to IDEs protecting me from my lack of knowledge throughout the development process that Visual Studio Code seemed unnecessarily complicated when I first started using it. However, as I gained experience as a developer and used other tools, I was able to see that the control that Visual Studio Code gave me also lead to a great amount of flexibility. By using it, I no longer need to switch IDEs to switch programming languages. It goes beyond simply being a code editor and even offers features developers would normally think they could only find in an IDE, like a debugger. Other features can easily be integrated into your development environment by adding free extensions from the built-in extensions marketplace. Using Visual Studio Code has streamlined my development process, allowing me to finish projects much faster and with much less hassle. One of the aspects of Visual Studio Code that I found initially off-putting was the ability to use it to write code in multiple programming languages. In the past, I had only used IDEs that made it easy to perform the tasks that surrounded development in one language, or even for specific types of software like web development. Since they are specialized, they make the development process simple for the language they are centered around. I didn't need to keep track of file extensions, file naming conventions, or even whether my code was correct or not before running it. They forced me to make the right decisions like I was a good developer. However, I certainly didn't fit the description of a \"good developer\" when using these tools. As I gained experience, I learned that using such specialized software required me to switch applications often when working on multiple projects or projects of higher complexity. These IDEs were also hindering my growth. That is what brought me back to Visual Studio Code, its flexibility with languages and the opportunity to learn. Because I took the time to learn how to use Visual Studio Code with different languages and frameworks, I no longer need to pay for expensive licenses to use less-flexible specialized tools. I can complete entire projects without changing applications, and there is hardly ever a reason for me to do so. Visual Studio Code challenges the trend of constantly spending money on newer, fresher technologies that are tailored to specific tasks that aim to increase our productivity or make us better at what we do. It shows that it is no longer necessary to search for the most specific tool for each of your tasks. General-purpose tools, although they may initially feel more complicated, may bring more flexibility to your workflow, enabling you to simplify it.As I learned more and more about Visual Studio Code, I began to appreciate the features many other developers love about it. One of those is its graphical debugging interface, which makes it easy to track down where your program has errors. Unlike IDE's that are normally confined to a particular language or framework, Visual Studio Code's flexibility with programming languages enables you to use a variety of debuggers and integrate them with this graphical interface. However, although the debugger lays out information in a very digestible way, in order to achieve that, I need to manually perform setup in the debugger's configuration files, which requires experience and knowledge about how the Visual Studio Code debugger works. This is similar to achieving particular formatting in a Microsoft Word document. Now, with my current level of experience, I can easily set up configuration and be presented with a clear interface that informs me of everything my code is doing at any particular moment. At first, however, this was a source of confusion for me. The complexity of configuration clouded my ability to see the flexibility it brought, which made me look elsewhere to specialized IDEs. You see, in dedicated IDE's, there's often no configuration necessary. It is already taken care of because there is a more specific set of language debugging tools and use cases. I have plenty of experience now, and with some languages the difficulty of setting up the Visual Studio Code debugger still makes me look to other tools like IDEs.This is true with other tools and forms of technology as well. Visual Studio Code is an excellent tool for developers, but it isn't always the best tool for the job. Sometimes the tool may be too sharp for the task, and all the required configurations may be overkill for a simple assignment. I think there is a level of comfort I feel while using it because of how much I use it, and how much I know about it. The same can be said about a lot of other software I use. Not using other social media platforms because of how at home I feel on Instagram, or not using WhatsApp because of how comfortable I feel using iMessage. It may be easier to perform desired tasks using other platforms, but using them requires switching applications, which isn't worth it unless it is completely necessary.";
static int BLOC_SIZES[] = {1, 64, 1024, 1024 * 64, BLOC_SIZE};
int main()
{
    int fd = open("/dev/mymem_smart", O_RDWR);
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
    for (int b = 0; b < 5; ++b)
    {
        int seek_res = lseek(fd, 0, SEEK_SET);
        if (seek_res < 0)
        {
            printf("Bad seek\n");
            return -1;
        }
        char *buf = malloc(sizeof(char) * BLOC_SIZES[b]);
        if (!buf)
        {
            printf("Error: buf wasn't allocated correctly.\n");
            return -1;
        }
        for (int i = 0; i < BLOC_SIZES[b]; ++i)
        {
            if (i == BLOC_SIZES[b] - 1)
            {
                buf[i] = 0;
            }
            else
            {
                buf[i] = essay[i % 5592];
            }
        }
        clock_t write_start = clock();
        for (int c = 0; c < BLOC_SIZE; c += BLOC_SIZES[b])
        {

            int res = write(fd, buf, BLOC_SIZES[b]);
            if (res < 0)
            {
                perror("What happened?: ");
                printf("BAD WRITE\n");
                return -1;
            }
        }
        clock_t write_end = clock();
        printf("Writing %d bytes in %d byte chunks took %lf seconds\n", BLOC_SIZE, BLOC_SIZES[b], ((double)(write_end - write_start)) / CLOCKS_PER_SEC);
        seek_res = lseek(fd, 0, SEEK_SET);
        if (seek_res < 0)
        {
            printf("Bad seek\n");
            return -1;
        }
        clock_t read_start = clock();
        for (int c = 0; c < BLOC_SIZE; c += BLOC_SIZES[b])
        {
            int res = read(fd, buf, BLOC_SIZES[b]);
            if (res < 0)
            {
                printf("BAD read\n");
                return -1;
            }
        }
        clock_t read_end = clock();
        printf("Reading %d bytes in %d byte chunks took %lf seconds\n", BLOC_SIZE, BLOC_SIZES[b], ((double)(read_end - read_start)) / CLOCKS_PER_SEC);
        free(buf);
    }
    int release_region_res = ioctl(fd, MYMEM_IOCTL_FREE, region);
    if (release_region_res < 0)
    {
        printf("Failed to release region: %d", region);
        return -1;
    }
    close(fd);
    return 0;
}
