// Explores writing a for with lots of newlines.

// Conclusion: I can't believe this works... I guess that shows you that
// white spaces are really not important in C.

#include <stdio.h>

int main(void) {
	for (
			int i = 0;
			i < 10;
			++i)
	{
		printf("i = [%d]\n", i);
	};

	return 0;
}
