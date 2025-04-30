#include <stdio.h>
#include <stdlib.h>

char arr[] = "01234";

int main(){
    int i;
    long unsigned int sz;
    
    sz = sizeof(arr)/sizeof(arr[0]);
    printf("o tamanhdo de arr = \"%s\" é %lu\n", arr, sz);
    for(i=0; i<sz; i++){
        printf("arr[%d] = '%c'\n", i, arr[i]);
    }
    
    return 0;
}
