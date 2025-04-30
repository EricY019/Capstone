#include <stdio.h>

void ChristmasTree(int height)
{
	int m,a,b;

	for (m = 0; m < height; m++)
	{
		a = m;

		while (a != height - 1)
		{
			printf (" ");
			a++;
		}	

		b = m + m + 1;

		for (a = 0; a < b; a++)
		{
			printf ("*");
		}
		
		printf ("\n");
	}
}

int main()
{
	ChristmasTree(4);
	printf ("\n");
	ChristmasTree(7);
	printf ("\n");
	ChristmasTree(11);
	printf ("\n");	
	
	return 0;
}
