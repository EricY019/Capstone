/*
 * trim.c
 *
 * 删除字符串尾部的空白符
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int trim(char s[]);

int main(void)
{
    char s[] = "hello, world     \t\n";

    trim(s);

    printf("%s\n", s);

    return EXIT_SUCCESS;
}

int trim(char s[])
{
    int n;

    for (n = strlen(s) - 1; n >= 0; n--)
        if (s[n] != ' ' && s[n] != '\t' && s[n] != '\n')
            break;
    s[n+1] = '\0';
    return n;
}
