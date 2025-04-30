#include <stdio.h>

int main()
{
	int x,f,count,a,b,t,tf;

	count=0;
	a=2;
	f=0;

	while(count<10)
 	{
		while(f==0)
		{
 			a++;
 			t=1;
 			for(x=1; x < a; x++)
 			{ 
				if(a%x<0 || a%x>0)
					t=0;
			}
 				if(t=1) 
					f=1;
 			}	
			b= a+2;
 			tf=1;
 			for(x=1; x < b; x++) 
			{
				if(b%x<0 || b%x>0) 
					tf=0;
			}
			if(tf=1)
 			{
 				printf("%d - %d\n",a,b);
 				count++;
 				a++;
 			}
	}
	return 0;
}
