#include <stdio.h>
#include <stdlib.h>

long int FATORACAO(long int n)
{
    long int numero = n;
    long int divisor = 1;
    long int resto;
    long int i=2;

    while(numero!=1)
    {
        resto = numero%i;
        if(resto==0)
        {
            divisor = i;
            numero/=i;
        }
        else
            i++;
    }
    return divisor;
}


int main()
{
    long int n;
    long int MAIOR_DIVISOR;
    char Sensor[] = "1620694973";

    n=atol(Sensor);
    printf("Problema sensor: %ld\n",n);
    MAIOR_DIVISOR = FATORACAO(n);
    printf("Maior divisor de %ld: %ld\n",n,MAIOR_DIVISOR);
    return 0;
}
