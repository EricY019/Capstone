#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int dojpa() {

    int i;
    for(i=0;i<15;++i) {
        printf("Hello World!\n");
        sleep(1);
    }

    return i;
}

int main(void)
{
    int i;
    i = dojpa();

    return 0;
}

