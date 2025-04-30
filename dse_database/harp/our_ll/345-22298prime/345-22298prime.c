#include <stdio.h>

static int
is_prime(unsigned int i)
{
    unsigned int j;
    for (j = 2; j * j < i + 1; j++) {
        if (!(i % j)) {
            return -1;
        }
    }
    return 0;
}

int
main(int argc, const char **argv)
{
    int maxnum = 100000;
    unsigned int i = 2;
    for (i = 2; i < maxnum; i++) {
        if (!is_prime(i)) {
            printf("%d\n", i);
        }
    }
}
