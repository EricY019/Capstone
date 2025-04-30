/* 837799 */
#include <stdio.h>

int main(int argc, char **argv)
{
    int t;
    int m = 0;
    long long n, nx, mn = 0;

    for (n = 1; n < 1000000; n++)
    {
        nx = n;
        t = 1;
        while (nx != 1)
        {
            if (nx % 2 == 0)
                nx /= 2;
            else
                nx = 3 * nx + 1;
            t++;
        }
        if (t > m)
        {
            m = t;
            mn = n;
        }
    }
    printf("%lld\n", mn);
    return 0;
}
