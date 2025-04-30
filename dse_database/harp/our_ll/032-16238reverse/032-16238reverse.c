/*
 * reverse.c
 *
 * 反转字符串
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{

}

void reverse(char s[])
{
    int c, i, j;

    for (i = 0, j = strlen(s) - 1; i < j; i++, j--) {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
    }
}
