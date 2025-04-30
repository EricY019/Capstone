#include <stdio.h>

#define N 10000

int main()
{
	int i, j, sum[N], s;
	
	for(i = 1; i < N; i++)
	{
		sum[i] = 0;
		for(j = 1; j < i; j++)
		{
			if(!(i % j))
			sum[i] += j;
		}
	}
	
	s = 0;
	for(i = 1; i < N; i++)
	{
		for(j = i + 1; j < N; j++)
		{
			if(i == sum[j] && j == sum[i])
				s = s + i + j;
		}
	}
	
	printf("\nSum is %d",s);
	return 0;
}