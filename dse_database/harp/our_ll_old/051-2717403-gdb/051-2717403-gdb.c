#include <stdio.h>

int main(void)
{
	int i = 0;
	int j = 1;

	for( ; i<10 ; i++)
	{
		j = 2 * i;
		printf("%d	%d\n", i, j);
	}

	return 0;
}
