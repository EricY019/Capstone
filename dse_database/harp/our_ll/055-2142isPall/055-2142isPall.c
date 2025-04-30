#include <stdio.h>
#include <assert.h>
#include <string.h>

int isPall ( char *s) {
    int len = strlen(s);
    char *end = s+len - 1;

    if ( len <= 1 ) {
        return 1;
    }

    while ( end > (s+2) ) {
        if ( *end != *s ) {
            return 0;
        }
        end--;
        s++;
    }
    return 1;
}

int main(int argc, char **argv) {
    assert( isPall("Hello") == 0 );
    assert( isPall("H") == 1 );
    assert( isPall("roor") == 1 );
    assert( isPall("rotor") == 1 );
    assert( isPall("") == 1 );
}
