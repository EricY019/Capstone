#include <stdio.h>

int main()
{
	int n, count;
    	long unsigned int factorial;
	
	factorial = 1;
        n = 10;

    	for (count=1; count<=n; count++)    
       	{
        	factorial*=count;              
       	}
    	printf("Factorial of %d = %lu\n",n, factorial);

    return 0;
}
