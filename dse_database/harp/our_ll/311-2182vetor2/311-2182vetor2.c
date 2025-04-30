#include<stdio.h>
int main()
{
	int i;
	int v[10]={1,2,3};	

	printf("%d\n",i); //i=?
	
	v[5]=42;
	
	for(i=0;i<10;i++)
		printf("%d-", v[i]);

	printf("\n");
		printf("%d\n", i); //i=10

	return 0;
}
