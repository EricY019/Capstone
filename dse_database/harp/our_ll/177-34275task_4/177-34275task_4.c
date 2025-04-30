#include <stdio.h>

int main ()
{
	int i;
	int numb = 1;
	
	for (i = 1; i < 11; i += 1)
	{
		numb *= i;
	}
	
	printf("%d\n",numb);
	return 0;
}
