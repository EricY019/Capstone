#include <stdio.h>

int main() {
	
	long unsigned int a, b, c;
	int counter;	

	a = 2;
	b = 1;

	for (counter = 0; counter < 100; counter++)
	{
		printf("%lu, \n",a);
		c = a + b;
		a = b;
		b = c;
	}	
	return 0;
}
