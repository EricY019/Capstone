#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int i, j, k, ni=0, nj=0, nk=0;
    
    for(i=1;i<999;i++)
        for(j=1;j<999;j++)
            for(k=1;k<999;k++)
                if((i*i)+(j*j)==(k*k))
                {
                    if(i+j+k==1000)
                    {
                        ni=i;
                        nj=j;
                        nk=k;
                    }
                }
    
    printf("Pythagorean triplet with sum 1000: %d, %d, %d\nProduct: %d\n", ni, nj, nk, ni*nj*nk);
    
    system("PAUSE");
	return 0;
}
