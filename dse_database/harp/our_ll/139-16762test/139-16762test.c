#include <stdlib.h>
#include <stdio.h>

int main() {
    int *array = calloc(4, 4);
    int i = 0;
    while (i < 4) {
        printf("%d\n", array[i]);
        i++;
    }
    return 0;
}
