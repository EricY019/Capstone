#include <stdio.h>
#include <string.h>

static int same_digits(int a, int b);

int main(int argc, char** argv) {
    for (int x = 100; ; ++x) {
        if (same_digits(x, x * 2) &&
            same_digits(x, x * 3) &&
            same_digits(x, x * 4) &&
            same_digits(x, x * 5) &&
            same_digits(x, x * 6)) {
            printf("%d\n", x);
            break;
        }
    }
}

static int same_digits(int a, int b) {
    int digits[10];
    int goal[10];
    memset(digits, 0, 10 * sizeof(int));
    memset(goal, 0, 10 * sizeof(int));
    for (; a > 0; a /= 10) {
        --digits[a % 10];
    }
    for (; b > 0; b /= 10) {
        ++digits[b % 10];
    }

    return !memcmp(digits, goal, 10);
}
