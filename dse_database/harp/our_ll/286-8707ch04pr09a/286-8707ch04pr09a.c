/*
 * Program to calculate the 200th triangular number
 * Introduction to the for statement
 */

#include <stdio.h>

int main(void) {
    int n, tri_num;
    tri_num = 0;

    n = 1;
    while (n <= 200) {
        tri_num = tri_num + n;
        n += 1;
    }
    printf("The 200th triangular number is %i\n", tri_num);

    return 0;
}
