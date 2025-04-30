/*
 * Exercise 4-12
 *
 * Adapt the ideas of printd to write a recursive version of itoa; that is,
 * convert an integer into a string by calling a recursive routine.
 */

#include <stdio.h>
#include <limits.h>

#define MAXLEN  128
#define MAXNUMS 10

void itoa_rec(int n, char s[]);

int main(void)
{
        int i;
        char s[MAXLEN];
        int nums[MAXNUMS] = {
                0,
                -1,
                7,
                -15,
                123,
                -325,
                2567,
                -10342,
                INT_MAX,
                INT_MIN
        };

        for (i = 0; i < MAXNUMS; ++i) {
                itoa_rec(nums[i], s);
                printf("%11s\n", s);
        }

        return 0;
}

void itoa_rec(int n, char s[])
{
        /* itoa_rec: recursively convert n to characters in s */

        static int i;
        static int sign;
        unsigned un;

        if (!sign && n < 0)
                sign = 1;

        un = (n < 0) ? -n : n;

        if (un / 10)
                itoa_rec(un/10, s);
        else {
                i = 0;
                if (sign) {
                        s[i++] = '-';
                        sign = 0;
                }
        }
        s[i++] = un % 10 + '0';
        s[i] = '\0';
}
