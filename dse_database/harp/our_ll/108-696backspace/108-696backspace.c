#include <stdio.h>
#include <time.h>

int sleep(unsigned long x)
{
    clock_t c1 = clock(), c2;
    do {
        if ((c2 = clock()) == (clock_t)-1)
            return 0;
    } while (1000.0 * (c2 - c1) / CLOCKS_PER_SEC < x);
    return 1;
}

int main(void)
{
    int i;
    printf("ABCDEFG");
    for (i = 0; i < 7; i++) {
        sleep(1000);
        printf("\b \b");
        fflush(stdout);
    }
    return 0;
}
