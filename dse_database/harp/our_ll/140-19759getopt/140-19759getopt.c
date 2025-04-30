#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    int arg;

    if (argc < 2)
    {
        printf("no arguments\n");
    }
    while ((arg = getopt(argc, argv, "ab:c")) != -1)
    {
        printf("optind: %d\n", optind);
        switch (arg)
        {
            case 'a':
                printf("option: a\n");
                break;
            case 'b':
                printf("option: b\n");
                printf("argument of -b: %s\n", optarg);
                break;
            case 'c':
                printf("option: c\n");
                break;
            default:
                printf("unknow option: %c\n", (char)optopt);
                break;
        }
    }

    return 0;
}
