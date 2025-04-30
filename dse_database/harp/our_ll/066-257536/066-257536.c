
// The sum of the squares of the first ten natural numbers is,
// 
// 12 + 22 + ... + 102 = 385
// 
// The square of the sum of the first ten natural numbers is,
// 
// (1 + 2 + ... + 10)2 = 552 = 3025
// 
// Hence the difference between the sum of the squares of the first ten natural
// numbers and the square of the sum is 3025 − 385 = 2640.
// 
// Find the difference between the sum of the squares of the first one hundred
// natural numbers and the square of the sum.

#include <stdio.h>
#include <time.h>


int solve() {

    int sum = 0,
        sum_of_squares = 0,
        N = 100;

    for(int i=0; i<=N; i++){
        sum += i;
        sum_of_squares += i*i;
    }

    int result = sum_of_squares - sum*sum;
    return result > 0 ? result : -result; // return abs(result)
}


int main() {
    clock_t begin = clock();
    int result = solve();
    clock_t end = clock();
    double time = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("%d [in %f seconds]", result, time);
}
