// Explores initializing a variable in the first argument of a for loop.

// Conclusion: you've got to be shitting me--this works?!

#include <stdio.h>

int main(void) {
	for (int i = 10; i >= 0; --i)
		printf("%d ", i);
	putchar('\n');

	return 0;
}
