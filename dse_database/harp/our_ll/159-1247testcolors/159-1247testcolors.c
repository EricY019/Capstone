#include <stdio.h>

int main (void) {
    int i;
    for (i = 0; i < 110; i++) {
        printf("\x1b[%im", i);
        printf("%i This is text\n", i);
    }
    printf("\x1b[0m");
}