#include <stdio.h>

char *upcase(char *str) {
    char dst;
    char *dp = &dst;
    while (*str) {
        char c = *str++;        
        if (c >= 'a' && c <= 'z') c += 'A' - 'a';
        *dp-- = c;
    }
    printf("dp = %s\n", dp);
    return dp;
}

int main(void) {
    char str[] = "Nice weather today!";
    printf("str= %s\n", str);
    printf("up = %s\n", upcase(str));
}

