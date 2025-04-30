#include <stdio.h>

int main ()
{
	int current_row;
	int max_rows = 4;
	for (current_row = 0;current_row < max_rows;current_row++)
	{	
		int i;
		for (i = 0;i < max_rows - current_row - 1;i++)
		{
			printf(" ");
		}
		for (i = 0;i < 1 +	2 * current_row;i++)
		{
			printf("*");
		}	
		printf("\n");
	}
	printf("\n");
	max_rows = 7;
	for (current_row = 0;current_row < max_rows;current_row++)
	{	
		int i;
		for (i = 0;i < max_rows - current_row - 1;i++)
		{
			printf(" ");
		}
		for (i = 0;i < 1 +	2 * current_row;i++)
		{
			printf("*");
		}	
		printf("\n");
	}
	printf("\n");
	max_rows = 11;
	for (current_row = 0;current_row < max_rows;current_row++)
	{	
		int i;
		for (i = 0;i < max_rows - current_row - 1;i++)
		{
			printf(" ");
		}
		for (i = 0;i < 1 +	2 * current_row;i++)
		{
			printf("*");
		}	
		printf("\n");
	}
	return 0 ;
}
