#include <stdio.h>

int main()
{
	int prim1,prim2,x,i,m,n;
	prim1=1;prim2=3;
	for(x=1;x<=10;x++)
	{
		m=0;n=0;i=1;
		while(i<=prim1 || m==0)
		{
			i++;
			if(prim1&i==0)
			{
				m++;	
			}

		}
		i=1;
		while(i<=prim2 || n==0)
		{
			i++;
			if(prim2&i==0)
			{
				n++;
			}
		}
		if(m==0 && n==0)
		{
			printf("(%d - %d)",prim1,prim2);	
		}
		prim1++;prim2++;
	}
	return 0;
}
