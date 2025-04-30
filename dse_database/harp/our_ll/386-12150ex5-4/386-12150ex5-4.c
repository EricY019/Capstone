#include <stdio.h>

int main ()
{
	int n, factorial = 1;

	printf("Table of Factorials\n");
	printf(" n  Factorial\n");
	printf("--- ---------\n");
	
	for(n = 1; n <= 10; ++n)
	{
		factorial *= n;
		printf("%3i %9i\n", n, factorial);
	}

	return 0;
}
