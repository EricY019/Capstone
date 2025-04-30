#include <stdio.h>

#define ARRAY_SIZE   (100000000)
#define ARRAY_SIZE_SQRT (10000)

char    array[ARRAY_SIZE];


int main( void )
{
    int n, i;

    /*  配列を初期化する    */
    for( i = 0; i < ARRAY_SIZE; i++ )
        array[i] = 1;

    /*  配列をふるいにかける    */
    for( n = 2; n <= ARRAY_SIZE_SQRT; n++ ) {
        if( array[n] == 1 ) {
            for( i = n * n; i < ARRAY_SIZE; i += n )
                array[i] = 0;
        }
    }

    /*  ふるいで残った数は素数である    */
    for( n = 2; n < ARRAY_SIZE; n++ ) {
        if( array[n] == 1 )
            printf( "%d\n", n );
    }

    return( 0 );
}
