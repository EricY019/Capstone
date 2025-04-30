/*
* Project Euler Problem #10:
*
* Find the sum of all the primes below two million. 
* 
* Author: Chris Moulds
*/

#include <stdio.h>
#include <stdlib.h>

/*
* Perform the Sieve of Eratosthenes and sum the results. Calloc will initialize
* all of the elements to zero; therefore, we will mark the non-primes as -1 as 
* they are deduced.
*/
long sieve_and_sum(int max)
{
	long sum = 0;
	int * list = calloc(max, sizeof(int));
	long i, j;

	for (i=2; i<max; i++){
		if (list[i] == 0){
			for (j=i; i*j<max; j++){
				list[i*j] = -1;
			}
		}
	}

	/*
	* We now have a list of prime numbers from 2 - 2,000,000. Sum them and
	* return.
	*/
	for (i=2; i<max; i++){
		if (list[i] == 0)
			sum+=i;
	}	
	return sum;
}

int main()
{
	long sum = 0;

	sum = sieve_and_sum(2000000);
		
	printf("ANSWER: %ld\n", sum);

	return 0;
}