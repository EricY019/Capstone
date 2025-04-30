#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main ( int argc, char **argv ) {
    unsigned int a = 1;
    double pc = 0;
    int items = 100;
    int i,j = 0;
    char *str = malloc( 256 );
    char tmp[100];

    if( argc == 2 ) items = atoi( argv[1] );

    if( str == NULL ) return EXIT_FAILURE;

    for ( i = 0; i <= items; i++ ) {
        memset( str, 0, 256 );
        strcpy( str, "[" );
        pc = (((double)i)/items)*100;
        while( (int)pc-- ) {
            strcat( str, "=" );
        }
        strcat( str, ">" );
        pc = 100 - (((double)i)/items)*100;
        while( (int)pc-- ) {
            strcat( str, " " );
        }
        sprintf( tmp, "] %g%%", (((double)i)/items)*100 );
        strcat( str, tmp );
        printf( "\r%s", str );
        fflush( stdout );
    }

    printf( "\n" );
    free( str );

    return EXIT_SUCCESS;
}

