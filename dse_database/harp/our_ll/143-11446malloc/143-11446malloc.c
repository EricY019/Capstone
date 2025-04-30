#include <stdio.h>
#include <stdlib.h> // for malloc
#include <string.h>

int main() {
    void* buf = malloc(100);
    char* str = (char*)buf;

    strcpy(str, "hello");

    printf("str from malloc space:%s\n", str);
    free(buf);
    return 0;
}
