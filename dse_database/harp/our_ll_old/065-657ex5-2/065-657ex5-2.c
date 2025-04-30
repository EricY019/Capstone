#include <stdio.h>

int main (void)
{
	int n;

	printf("Table of Powers of Two\n\n");
	printf(" n  n squared\n");
	printf("--- ---------\n");
	
	for (n = 1; n <= 10; n++)
		printf("%3i %9i\n", n, n*n);
	
	return 0;
}
