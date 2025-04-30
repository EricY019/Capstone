#include <stdio.h>
#include <string.h>

/* The C Programming Language: 2nd Edition
 *
 * Exercise 4-13: Write a recursive version of the function reverse(s), which
 * reverses the string `s` in place.
 *
 * Answer: Much like the last exercise, the trick is in terminating your flow
 * early and resetting state for the next string.
 */

void reverse(char[]);

int main() {
	char foo[40] = "Learning C is fun and challenging.";
	printf("Before: %s\n", foo);
	reverse(foo);
	printf(" After: %s\n", foo);
	/* I don't know how to set a char array to another string... */
	char bar[30] = "Hello out there!";
	printf("Before: %s\n", bar);
	reverse(bar);
	printf(" After: %s\n", bar);
	return 0;
}

void reverse(char s[]) {
	static int i = 0;
	static int j = 0;
	int c;

	if (j == 0) {
		j = strlen(s) - 1;
	}

	if (i < j) {
		c = s[i];
		s[i] = s[j];
		s[j] = c;
		i++;
		j--;
		reverse(s);
		return;
	}
	i = 0;
	j = 0;
}
