#include <stdio.h>
#include <stdlib.h>
#include <string.h>

 #define SQRT_MAX 317
 #define PRIME_RANGE 100489

//#define SQRT_MAX 1000
//#define PRIME_RANGE 1000000

/* BEWARE OF GIVING LARGE RANGE NUMBERS AS IT MIGHT TAKE A LONG TIME */

char *bool_str;
static const char true = '1';
static const char false = '0';

void print_prime_numbers(void)
{
	int i;
	for(i=0; i < PRIME_RANGE;++i)
	{
		if(bool_str[i] == true)
			printf("%d,", i);
	}
}

int main(void)
{

	int i,j,k,n;

	bool_str = (char *) malloc ( (PRIME_RANGE + 1) *  sizeof(char));
	
	/* initialising the bool_str */
	for(i = 0; i < PRIME_RANGE; bool_str[i]=true,++i);
	bool_str[0] = bool_str[1] = false;
	bool_str[PRIME_RANGE] = '\0';

	for(i = 2; i <= SQRT_MAX ; ++i)
	{
		if( bool_str[i] == true)
		{
			for(j = 1, k = i*i; k < PRIME_RANGE; ++j)
			{
				bool_str[k] = false;
				k = i * (i+j);
			}
		}	
	}

	print_prime_numbers();	// prints all prime numbers in range
	//puts(bool_str);	// prints bool_str
	
	return EXIT_SUCCESS;
}
