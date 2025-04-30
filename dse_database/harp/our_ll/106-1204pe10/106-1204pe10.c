/* Project Euler
** 10
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <inttypes.h>

static long long euler = 0;
static long long primebelow = 2000000;

int isPrime (int number) {

	unsigned int j = 2;
	for (j=2; j*j<=number; j++) {
		if (number % j == 0) return 0;
	}
	return 1;
}

int main(int argc, char** argv) {

	unsigned long long primesum = 0;
	int i;

	for (i=2; i < primebelow; i++) {
		if (isPrime(i)) {
			printf("%d\n", i);
			primesum+=i;
		}
	}

	euler = primesum;

	printf("%llu\n", euler);

return 0;
}

