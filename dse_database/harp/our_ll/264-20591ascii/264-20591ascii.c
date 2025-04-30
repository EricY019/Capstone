#include <stdio.h>

#define START_CODE 32
#define LAST_CODE 126

int main()
{
    char ch;

    for (ch = START_CODE; ch <= LAST_CODE; ++ch)
        printf("%X %d %c\n", ch, ch, ch);

    return 0;
}
