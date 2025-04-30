#include <stdio.h>
#include <stdlib.h>

int main()
{
    //stdout > file
    for(int i = 0 ; i < 8000; i++) {
        
        printf("%d \n", rand());
    }

    return 0;
}
