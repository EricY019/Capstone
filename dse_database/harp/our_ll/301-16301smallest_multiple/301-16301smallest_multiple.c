/*
 * This is the bruteforce solution. A smarter solution would be to do a prime 
 * factorization of 1..N and then get the product of the highest powers. This
 * takes advantage of the lowest common multiple. i.e for 1..10:
 *
 * 10 = 5 * 2
 * 9 = 3^2
 * 8 = 2^3
 * 7 = 7
 * 6 = 3 * 2
 * 5 = 5
 * 4 = 2^2
 * 3 = 3
 * 2 = 2
 *
 * res = 5 * 3^2 * 2^3 * 7 = 2520
 * */

#include <stdio.h>
#include <stdlib.h>

#define N 20

int main() {
    char found = 0;
    int res = N;
    while (!found) {
        int i;
        for (i=N; i > 1; i--) {
            if (res%i !=  0)
                break;
        }
        if (i == 1) found = 1;
        else res++;
    }
    printf("Smallest multiple of 1..%d is %d\n", N, res);
    return 0;
}
