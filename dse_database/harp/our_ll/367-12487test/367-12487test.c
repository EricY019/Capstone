#include <stdio.h>

int main ()
{
	float sum = 0;
	int i = 1;
	for (i=1; i<= 100; i++)
	{
		if (i%2 == 0)
			sum += i;
		else 
			sum -= i;
	}
	printf ("%f\n", sum);
}

