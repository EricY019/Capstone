/* Project Euler
** 12
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <inttypes.h>

static long long euler = 0;

/*
int numberdivisors(unsigned long long number) {
	int total = 0;
	unsigned long long i;

	for (i=1; i < number; i++) {
		if (number % i == 0) {
			total++;
			printf("divisor = %llu | divisors = %d\n", i, total);
		}
	}

	total++;
	return total;
}
*/
// Copied from stackoverflow
int numberdivisors(unsigned long long x) {
    unsigned long long limit = x;
    int numberOfDivisors = 0;
    unsigned long long i = 1;

    for (i = 1; i < limit; ++i) {
        if (x % i == 0) {
            limit = x / i;
            printf("limit = %llu | i = %llu\n", limit, i);
            if (limit != i) {
                numberOfDivisors++;
            }
            numberOfDivisors++;
        }
    }

    return numberOfDivisors;
}

/* Completely unnecessary for this problem

unsigned long long numbertriangle(unsigned long long number) {
	unsigned long long i;
	unsigned long long total = 0;

	for (i=1; i <= number; i++) {
		total+=i;
		printf("triangle = %llu\n", total);
	}
	return total;
}
*/

int main(int argc, char** argv) {

	unsigned long long triangle = 0;
	int divisors = 0;
	unsigned long long i = 1;

	do {
		triangle+=i;
		divisors = numberdivisors(triangle);
		i++;
		printf("%llu\n", i);
	} while (divisors <= 500);

	euler = triangle;

	printf("%llu\n", euler);

return 0;
}

