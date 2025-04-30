#include <stdio.h>

int main() {
	
	long int number;
	
	for (number = 0; number < 30000; number++)
	{	
		if (number%2!=0)
		{
			if (number%3==0 && number%7==0)
			{ 
				printf("%ld\n",number);
			}
		}
	}	

	return 0;
}
