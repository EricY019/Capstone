#include <stdio.h>
#include <stdlib.h>

int f2(char* x, char p)
{
    char* q = x;
    while (*q < p && *q != '\0')
    {
        q++;
    }
    return q - x;
}

int main()
{
    int q = 1;
    char s[8] = "Gorazde";
    q = f2(s , 's');
    printf("%d\n", q);
    return 0;
}
