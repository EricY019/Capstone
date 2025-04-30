/* sum.c
 * A function that returns the sum of numbers between 0 to 1000 that is
 * divisible by 3 or 5.
 *
 * Created by Billy Wilson Arante <arantebillywilson@gmail.com>
 * Last updated on 2017/06/08 PHT
 */
#include <stdio.h>

int sum_zero_to_onethousand();

int main(void)
{
	printf("%d\n", sum_zero_to_onethousand());

	return 0;
}

int sum_zero_to_onethousand()
{
	int total = 0;
	for (int count = 0; count <= 1000; count++) {
		if ((count % 3 == 0) || (count % 5 == 0)) {
			total += count;
		}
	}

	return total;
}
