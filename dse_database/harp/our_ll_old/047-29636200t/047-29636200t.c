#include <stdio.h>
#include <stdlib.h>

int main ()
{
    printf("%d \n", 200000);
    
    for(long int i = 0 ; i < 200000; i++) {
        printf("%d \n", rand()%200000);
    }
    
    return 0;
}