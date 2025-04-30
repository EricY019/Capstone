#include <stdio.h>
#include <math.h>
#include <ctype.h>

#define PRIMES 10000

unsigned long int divisors(unsigned long long int);

int main()
{
	unsigned long long int i, flag = 0, n = 0, div;
	
		for(i = 1; !flag ; i++)
		{
			if(i == 1)
				n = 1;
			else
			{
				n += i;
				div = divisors(n);
				if(div > 500)
					flag = 1;
			}
		}
	
	printf("\nLargest is %llu", n);
	return 0;
}

unsigned long int divisors(unsigned long long int n)
{
	unsigned int primes[PRIMES];
	unsigned long int i;
	
	for( i = 0; i < PRIMES && i <= n ; i++) primes[i]=0;
	
	unsigned short int div=1;
	
	for(i = 2 ; i < PRIMES && i <= n ; i++)		
	{
		while(!(n % i))
		{
			n /= i;
			primes[i]++;
		}
		if(primes[i])
			div *= (primes[i] + 1);
	}
	
	return div;
}