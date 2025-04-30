#include <stdio.h>
#include <assert.h>

int mstrncmp( int n, char *p, char *q ) {

    if ( ( n == 0 ) || 
         ( ( p == NULL ) && ( q == NULL) ) ) {
        return 0;
    }
    if ( p == NULL ) { return -1; }
    if ( q == NULL ) { return 1; }

    while ( n ) {

        if ( ( *p == '\0' ) && ( *q == '\0' ) ) { return 0; }
        // The below two commented lines are not needed 
        // as the same test is done by the next two lines.
        //if ( *p == '\0' ) { return -1; }
        //if ( *q == '\0' ) { return 1; }
        if ( *p < *q ) { return -1; }
        if ( *p > *q ) { return 1; }
        if ( *p == *q ) { 
            p++; q++; n--;
        }
    }
    return 0;
}

int main (int argc, char **argv) {

    assert( mstrncmp( 0, "", "") == 0 );
    assert( mstrncmp( 1, "", "") == 0 );
    assert( mstrncmp( 4, "help", "hel") == 1 );
    assert( mstrncmp( 4, "hel", "help") == -1 );
    assert( mstrncmp( 3, "hello", "help") == 0 );
    assert( mstrncmp( 4, "hello", "help") == -1 );
    assert( mstrncmp( 4, "help", "hello") == 1 );
    assert( mstrncmp( 2, "help", "help") == 0 );
    assert( mstrncmp( 9, "help", "help") == 0 );
    assert( mstrncmp( 0, "help", "help") == 0 );
    assert( mstrncmp( 0, NULL, "help") == 0 );
    assert( mstrncmp( 1, NULL, "help") == -1 );
    assert( mstrncmp( 1, "help", NULL) == 1 );
    return 0;

}

