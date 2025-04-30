/*Problem 5: 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?*/

#include<stdio.h>

#define MAX 999999999
#define MIN 2520

int main(int argc, char const *argv[])
{
	unsigned long long int i,j;
	int flag=0;
	for(i=MIN;i<MAX;i++)
	{
		flag =0;
		for(j=2;j<=20;j++)
		{
			if(i%j!=0)
			{
				flag = 1;
				break;
			}
		}
		if(flag==0)
		{
			printf("%llu\n",i);
			break;
		}
	}
	return 0;
}