/*
 * Whil i increments to 300, c will be getting i*i every time
 * but c can stand only 1 unsigned char byte. What happens here is that
 * i*i is truncated to fit in a char. Ex:
 * if i*i == 0xFE, 'F' will be truncated so 'E' could fit into 'c'
 * thus making a whole new mess
 *
 * The same happened with 'd', which is a signed char, so when assigned 0xFF
 * will become '-1' (since 0xF means all bits set, or -1 in complement of 2)
 */
#include <stdio.h>
int main(void)
{
    unsigned char c;
    char d;
    int i;
    for(i = 0; i < 300; i++)
    {
        c = i * i;
        printf("i = %i, c = %i\n", i, c);
    }
    d = 0xFF;
    printf("(char)0xFF = %i\n", d);
    return 0;
}
