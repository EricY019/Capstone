#include <stdio.h>


int fib(int n)
{
	int  i = 0;
	int fib[n+1];
	fib[0] = 0;
	fib[1] = 1;
	for(i=2;i<=n;i++)
		fib[i] = fib[i-1] + fib[i-2];
	return fib[n];
}
int main()
{
	int n = 9;
	printf("Fib(9) : %d \n",fib(9));
	return 0;
}
