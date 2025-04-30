#include <stdio.h>

int main(void)
{
	int index;
	for (index = 'A'; index <= 'Z'; index ++)
		printf("%c\t%3d\t\t%c\t%3d\n", (char) index, index, (char) index + 32, index + 32);
	return 0;
}
