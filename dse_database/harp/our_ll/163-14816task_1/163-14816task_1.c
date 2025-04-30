#include <stdio.h>


int main ()
{
	int i;
	
	for (i = 97; i <= 122 ;i ++)
	{
		printf("%c - %d\n",i,i);
	}
	
	for (i = 65; i <= 90; i ++)
	{
		printf("%c - %d\n",i,i);
	}
	
	for (i = 48; i <= 57; i ++)
	{
		printf("%c - %d\n",i,i);
	}
	
	return 0;
}
