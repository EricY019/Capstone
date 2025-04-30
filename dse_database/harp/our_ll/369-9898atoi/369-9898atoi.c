#include <stdio.h>

int atoi(char s[])
{
    // convert s to integer
    int i, n;

    n = 0;
    for (i = 0; s[i] >= '0' && s[i] <= '9'; ++i)
        n = 10 * n + (s[i] - '0');
    return n;
}

int main()
{
    char *s = "1234567911";
    printf("abcdefg = %u\n", atoi(s));
}

             
