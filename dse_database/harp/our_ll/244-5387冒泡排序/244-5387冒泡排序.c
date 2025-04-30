#include <stdio.h>

void swap(int *a,int *b)
{
	int temp=*a;
	*a=*b;
	*b=temp;
}

void Bubble_Sort(int a[],int n )
{
	int i,j;
    for(i=n-1;i>=0;--i)
    {
    	int flag=0;
    	for (j=0;j<i;++j)
    	{
    		if(a[j]>a[j+1]) 
    		{
    			flag=1;
    			swap(&a[j],&a[j+1]);
    			
			}
		}
    	if (flag==0)
    	break;
	}
    
}


int main (void)
{
	int a[]={9,5,44,66,85,12,35,27};
	int n=sizeof(a)/sizeof(int),i;
	Bubble_Sort(a,n);
	for(i=0;i<n;i++)
	printf("%d\n",a[i]);
	
	return 0;
}
