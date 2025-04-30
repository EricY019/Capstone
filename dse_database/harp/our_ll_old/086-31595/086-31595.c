
// 2520 is the smallest number that can be divided by each of the numbers from
// 1 to 10 without any remainder.
//
// What is the smallest positive number that is evenly divisible by all of the
// numbers from 1 to 20?


#include <stdio.h>
#include <time.h>

#define FALSE 0
#define TRUE 1


int solve() {
    for(int i=2520;;i++) {
        int found=FALSE;
        for(int j=2;j<=20;j++) {
            if(i%j != 0) {
                found = FALSE;
                break;
            }
            found = TRUE;
        }
        if(found) return i;
    }
}


int main() {
    clock_t begin = clock();
    int result = solve();
    clock_t end = clock();
    double time = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("%d [in %f seconds]", result, time);
}
