#include <stdio.h>
#include <string.h>

void strcat2(char *s, char *t);
int main() {
    char s[100] = "fuck";
    char *t = "sabonis";
    strcat2(s, t);
    printf("%s\n", s);
}

void strcat2(char *s, char *t) {
    while(*s)
        s++;
        ;
    while(*s++ = *t++)
        ;
    *s = '\0';
}

