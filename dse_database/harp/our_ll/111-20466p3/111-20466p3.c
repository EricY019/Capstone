#include<stdio.h>

#define NUM 600851475143

int isPrime(int a)
{
	int i;
	if(a==2)
		return 1;
	if(a%2==0)
		return 0;
	for(i=3;i<=a/2;i+=2)
	{
		if(a%i==0)
			return 0;
	}
	return 1;
}

int main(int argc, char const *argv[])
{
	unsigned long long int p,i,rem = 600851475143;
	for(i=2;rem>1;i++)
	{
		if(isPrime(i))
		{
			if(rem%i == 0)
			{
				p=i;
				rem = rem /i;
				--i;
			}
		}
	}
	printf("%llu\n", p);
	return 0;
}