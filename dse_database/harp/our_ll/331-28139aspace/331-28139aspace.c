/* Example code for Think OS.

Copyright 2014 Allen Downey
License: GNU GPLv3

*/

#include <stdio.h>
#include <stdlib.h>

int global;

int main ()
{
    int local = 5;
    void *p = malloc(128);
    void *q = malloc(128);
    int local_2 = 7;

    printf ("Address of main is %p\n", main);
    printf ("Address of global is %p\n", &global);
    printf ("Address of local is %p\n", &local);
    printf ("Address of local_2 is %p\n", &local_2);
    printf ("Address of p is %p\n", p);
    printf ("Address of q is %p\n", q);
    
    return 0;
}
