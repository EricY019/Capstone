#include <stdio.h>

int main() {
    int longest = 0, terms = 0, i;
    unsigned long j;

    for (i = 1; i <= 1000000; i++) {
        j = i;
        int current_term = 1;

        while (j != 1) {
            current_term++;

            if (current_term > terms) {
                terms = current_term;
                longest = i;
            }

            if (j % 2 == 0) j /= 2;
            else j = 3 * j + 1;
        }
    }

    printf("Longest: %d (%d)\n", longest, terms);

    return 0;
}