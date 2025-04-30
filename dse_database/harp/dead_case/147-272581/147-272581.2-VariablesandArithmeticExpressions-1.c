/*
 ============================================================================
 Name        : 1.2-VariablesandArithmeticExpressions-1.c
 Author      : Daniel Marchena Parreira
 Email       : danielmapar@gmail.com
 Date        : 02/11/2013
 Version     : 0.1
 Copyright   : GNU General Public License Version 2
 Description : Fahrenheit-Celsius table
 ============================================================================
 */

#include <stdio.h>

/* print Fahrenheit-Celsius table
   for fahr = 0, 20, ..., 300 */

int main(void)
{

	int fahr, celsius;
	int lower, upper, step;

	lower = 0;   /* lower limit of temperature scale */
	upper = 300; /* upper limit */
	step  = 20;  /* step size */

	fahr = lower;
	while(fahr <= upper)
	{
		celsius = 5 * (fahr-32) / 9;
		printf("%d\t%d\n", fahr, celsius);
		fahr = fahr + step;
	}

	return 0;
}
