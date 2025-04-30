#include <stdio.h>

int main ()
{
	int n, triangularNumber;
	
	printf("Table of Triangular Numbers\n");
	printf(" n  Triangular Value\n");
	printf("--- ----------------\n");

	for (n = 5; n <= 50; n+=5)
	{
		triangularNumber = n * (n + 1) / 2;
		printf("%3i %16i\n", n, triangularNumber);
	}

	return 0;
}
