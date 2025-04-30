#include <stdio.h>

int main(int argc, char* argv[])
{
	int i = 0;
	int j = 0;

	printf("%d\n", argv[1]);

	for(i=0; i<(int)argv[1]; i++)
	{
		for(j=0; j<i; j++)
		{
			printf("* ");
		}
		printf("\n");
	}
	return 0;
}
