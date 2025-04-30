#include <stdio.h>

static int calc_length(long n);

int main(int argc, char** argv) {

    int longest_length = 0;
    int longest_n = 0;
    for (long i = 1; i < 1000000; ++i) {
        const int len = calc_length(i);
        if (len > longest_length) {
            longest_length = len;
            longest_n = i;
        }
    }

    printf("%d\n", longest_n);
}

// using a cache does not seem to offer any time savings
static int calc_length(long n) {
    int len = 1;
    for (; n != 1; len++) {
        if (n % 2 == 0) {
            n /= 2;
        } else {
            n = 3 * n + 1;
        }
    } 
    return len;
}
