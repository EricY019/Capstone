#include <stdio.h>

int isPrime ( int n )
{
	if ( n == 2 ) return 1;
	if ( n < 2 ) return 0;
	//if ( n%2 == 0 )	return 0;
	int i = 2;
	while ( i*i <= n ) {
		if ( n%i == 0 ) return 0;
		i++;
	}
	return 1;
}

int main(void) {
	// your code goes here
	long long unsigned sum = 0;
	int i = 0;
	while ( i < 2000000 ) {
		if ( isPrime(i) ){
			sum+=i;
			//printf(" %i ",i);
		}
		i++;
	}
	printf("\nsum: %llu\n",sum);
	
	return 0;
}
