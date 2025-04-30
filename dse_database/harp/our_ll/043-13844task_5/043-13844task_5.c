#include<stdio.h>
int main()
{
	int i=1;
	while(i<30000) { if( i%2 && (i%3==0) && (i%7==0) ) printf("%d\n",i); i++; }
	return 0;
}
