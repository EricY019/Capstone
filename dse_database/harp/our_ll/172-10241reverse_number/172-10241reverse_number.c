#include <stdio.h>
int reverse_a_number( long int number)
{
	int rev_num = 0;
	while(number != 0)
	{
		rev_num = rev_num * 10;
		rev_num = rev_num + number % 10;
		number = number / 10;
	}
	return rev_num;
	}
int main()
{
	printf("5170984 %d\n", reverse_a_number(5170984));
	printf("406567 %d\n", reverse_a_number(406567));
	printf("368750 %d\n", reverse_a_number(368750));
	printf("2369510 %d\n", reverse_a_number(2369510));
	printf("2183293 %d\n", reverse_a_number(2183293));
	return 0;
}

