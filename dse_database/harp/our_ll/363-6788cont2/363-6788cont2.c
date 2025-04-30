#include <stdio.h>
//imprime numeros de 0 - 5000
    int main()
{
    int cont;
    
    for(cont=0; cont<5000; cont+=2)   //"cont+=2" para add de 2 em 2
    {
        
        printf("\n%d", cont);
    }
    
    printf("\nEste num = %d", cont);
    return 0;   
}