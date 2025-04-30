#include <stdio.h>
#include <stdlib.h>

char foo[10];

int main(){
    char *array[] = {"Foo", "Bar", "Baz"};

    foo[0] = 'a';

    char *ptr = foo - 10;
    int i;

    for (i = 0; i < 20; i++)
    {
        printf("Addr: %p, val: %d\n", ptr + i, *(ptr + i));
    }

    printf("Addr of foo: %p\n", foo);
    printf("Addr of array[0]: %p\n", array[0]);
    return 0;
}