
// To run:
//     gcc 3.c -std=c99
//
// Problem:
//     The prime factors of 13195 are 5, 7, 13 and 29.
//
//     What is the largest prime factor of the number 600851475143 ?

#include <stdio.h>
#include <time.h>


int largest_prime_factor(long number) {
    int largest_factor = 0;
    for(int i=2; i <= number; i++) {
        if(number % i == 0) {
            if(i > largest_factor)
                largest_factor = i;
            number /= i;
        }
    }
    return largest_factor;
}


int main() {
    long NUMBER = 600851475143;
    clock_t begin = clock();
    int result = largest_prime_factor(NUMBER);
    clock_t end = clock();
    double time = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("%d [in %f seconds]", result, time);
}
