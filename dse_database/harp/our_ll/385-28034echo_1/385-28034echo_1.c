#include <stdio.h>

int main ( int argc, char * argv [] ) {

    int i = 0;

    for ( i = 1; i < argc; i++ ) { 
        printf ( "%s%s", argv [ i ], ( i < argc - 1 ) ? " " : "" );
    };
    printf ( "\n" );

    return 0;
}
