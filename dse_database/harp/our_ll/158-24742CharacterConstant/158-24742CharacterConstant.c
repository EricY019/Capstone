/*
 ============================================================================
 Name        : CharacterConstant.c
 Author      : Daniel Marchena Parreira
 Email       : danielmapar@gmail.com
 Date        : 22/12/2013
 Version     : 0.1
 Copyright   : GNU General Public License Version 2
 Description : The value of character constant '\0'
 ============================================================================
 */
#include <stdio.h>

#define MAXLINE 1000

int main(void)
{
	int i = 0;
	char array[MAXLINE];
	char array_2[] = {'1','2','3','4','5', '\0'};
	enum test { FIRST = 1, SECOND = 2 };
	/*
	 * This will initialized the first value to zero, and all subsequent
	 * values to 0. If you put a 1 between the curly braces, it would
	 * initialize the first value to 1, and all subsequent values to 0.
	 */
	int array_3[] = {0};

	printf("%d\n\n\n", SECOND);

	while(i < MAXLINE)
	{
		array[i] = '1';
		i++;
	}
	/* same null character value */
	array[i] = '\0';

	printf("%s\n\n\n", array);
	printf("%s\n\n\n", array_2);
	printf("%d", '\0'); /* decimal value is 0 */

	return 0;
}
