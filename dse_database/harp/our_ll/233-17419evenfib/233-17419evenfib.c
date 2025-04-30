#include <stdio.h>

int main()
{
    int x = 0;
    int y = 1;
    int z;
    int sum = 0;

    do {
        z = x + y;
        x = y;
        y = z;
        if (!(y & 01)) 
            sum += y;
    } while (y < 4000000);
    
    printf("%d\n", sum);
    return 0;
}
