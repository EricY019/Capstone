/* Write a program that creates an array with 26 elements and stores
   the 26 lowercase letters in it. Also have it show the array contents.
*/
#include <stdio.h>
int main(void)
{
	char charArr[26];
	char start = 'a';
	int i;

	// assign values to the array 
	for (i = 0; i < 26; i++)
		charArr[i] = start + i;

	// show array
	printf("[ ");
	for (i = 0; i < 26; i++)
		printf("%c ", charArr[i]);
	printf("]\n");

	return 0;
}
