/*
 ============================================================================
 Name        : 1.3-TheForStatement.c
 Author      : Daniel Marchena Parreira
 Email       : danielmapar@gmail.com
 Date        : 13/11/2013
 Version     : 0.1
 Copyright   : GNU General Public License Version 2
 Description : There are plenty of different ways to write a program for a
 	 	 	   particular task. Let's try a variation on the temperature
 	 	 	   converter.
 ============================================================================
 */

#include <stdio.h>

/* print Fahrenheit-Celsius table */

int main(void)
{
	int fahr;

	for(fahr = 0; fahr <= 300; fahr = fahr + 20)
		printf("%3d %6.1f\n", fahr, (5.0/9.0)*(fahr-32));

	return 0;
}
