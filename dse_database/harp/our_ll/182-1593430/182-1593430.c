/* 443839 */
#include <string.h>
#include <stdio.h>

#define POW5(n) ((n) * (n) * (n) * (n) * (n))

int main(int argc, char **argv)
{
    int n, nn, s, ss = 0;
    for (n = 10; n < POW5(9) * 6; n++)
    {
        s = 0;
        nn = n;
        while (nn != 0)
        {
            s += POW5(nn % 10);
            nn /= 10;
        }
        if (n == s)
            ss += n;
    }
    printf("%d\n", ss);
    return 0;
}
