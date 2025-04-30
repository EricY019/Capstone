/* Program 7 - Project Euler
 * Autor: José Marcos de Lira Júnior
 */

#include <stdio.h>

int main(void)
{
    int nprime=1, i, j,prime=0;

    for(i=3;nprime<10001;i++)
    {
        for(j=2;j<i;j++)
        {
            if(i%j==0)
                break;
        }

        if(j==i)
        {
            prime = i;
            nprime++;
        }
    }
printf("%d -> %d\n",nprime,prime);
return 0;
}  
