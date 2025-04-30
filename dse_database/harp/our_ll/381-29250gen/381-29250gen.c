#include <stdio.h>

int main()
{
	int i, j;

	for (i=0; i<360; i++)
	{
		for (j=0; j<10000; j++)
		{
			printf("%d.%04d\n", i, j);
		}
	}
}
