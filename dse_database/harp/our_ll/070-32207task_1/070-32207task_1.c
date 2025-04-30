#include <stdio.h>
int main()
{
char c;
int a; 
c=96;
for (a=97; a<=122;a++)
	{
		c++;
		printf("%c - %d\n",c,a);
	}
c=64;
for (a=65;a<=90;a++)
{
	c++;
	printf("%c - %d\n",c,a);
}
c=47;
for(a=48;a<=57;a++)
{
	c++;
	printf("%c - %d\n",c,a);
}
return 0;
}
