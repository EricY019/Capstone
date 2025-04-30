#include<stdio.h>
int main()
{
	int a=10,b=1;
	while(a>0) { b*=a; a--; }
	printf("%d",b);
	return 0;
}
