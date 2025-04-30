#include <stdio.h>

int ReverseNumber(int number)
{
	int reversedNumber = 0;
	
	while (number)
	{
		reversedNumber *= 10;
		reversedNumber += number % 10;
		number /= 10;
	}
	
	return reversedNumber;
}

int main()
{
	printf("%d\n", ReverseNumber(5170984));
	printf("%d\n", ReverseNumber(406567));
	printf("%d\n", ReverseNumber(368750));
	printf("%d\n", ReverseNumber(2369510));
	printf("%d\n", ReverseNumber(2183293));
	return 0;
}
