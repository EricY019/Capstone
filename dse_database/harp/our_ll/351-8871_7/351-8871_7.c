#include <stdio.h>

int power(int, int);

int main(int argc, char const *argv[])
{
	printf("| n | base: 2 | base -3 |\n");
	for (int i = 0; i < 10; ++i)
		printf("| %d | %7d | %7d |\n", i, power(2, i), power(-3, i));
	return 0;
}

int power(int base, int n)
{
	int p;

	for (p = 1; n > 0; --n)
		p = p * base;
	return p;
}
