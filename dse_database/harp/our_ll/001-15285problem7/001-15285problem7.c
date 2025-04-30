#include <stdio.h>

/*	By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see 
	that the 6th prime is 13.

	What is the 10 001st prime number?
*/

int isPrime(int num, int primes[], int primeCount);

int main(int argc, char *arv[])
{
	int primes[10001];
	int primeCount = 1, i=3;
	primes[0] = 2;

	while(primeCount <=10001) {
		if(isPrime(i, primes, primeCount))
			primes[primeCount++] = i;
		i += 2;
	}

	printf("10 001th prime: %d\n", primes[10000]);
	return 0;
}

int isPrime(int num, int primes[], int primeCount)
{
	int i;
	for(i = 0; i < primeCount; i++)
		if(num%primes[i]==0) return 0;
	return 1;
}

/*	For finding the primes, we will keep a list of the existing primes in 
	memory. We do this because we only need to check for division for previous
	primes, not all numbers. 

	We will also only check odd numbers, as all primes after 2 are odd.
*/