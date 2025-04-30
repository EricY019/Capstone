#include <stdio.h>

#define ulong unsigned long

int main() {
    const ulong val = 20;
    ulong x;
    ulong y;

    for (x = val; ; x += val) {
        for (y = val - 1; y; y--) {
            if (x % y != 0)
                break;
        }

        if (y == 0) {
            printf("Answer = %u \n", x);
            break;
        }
    }

    return 0;
}