#include <stdio.h>
#include <string.h>

int main()
{
    char str[] = "OpenHouse 2016";
    char key = 88;

    printf("String: ");
    for(unsigned int i = 0; i < strlen(str); i++) {
        printf("0x%x, ", str[i] ^ key);
    }

    printf("\nLength: %d\n", strlen(str));

    return 0;
}
