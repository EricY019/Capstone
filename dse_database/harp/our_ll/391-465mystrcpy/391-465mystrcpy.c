#include <stdio.h>

char *my_str_cpy(char *dst, char *src)
{
    if (dst == NULL || src == NULL)
        return NULL;

    char *addr = dst;

    while ((*dst++ = *src++))
        ;

    return addr;
}

int main()
{
    char a[8] = {};
    char *b = "abcde";

    printf("%s\n", my_str_cpy(a, b));
    printf("\n");
    return 0;
}
