#include <stdio.h>
#include <stdlib.h>

int fibonacci ( int zahl )
{
    if( zahl <= 2 )
    {
        return 1;
    }
    else
    {
        return fibonacci( zahl - 1 ) + fibonacci( zahl - 2 );
    }
}

int main()
{
    int i;

    for ( i = 1; i <= 40; i++ )
    {
        printf( "\n\t\tGeneration %d: %d", i, fibonacci( i ) );
    }

    printf("\n");

    return 0;
}