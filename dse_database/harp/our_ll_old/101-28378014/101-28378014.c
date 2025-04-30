#include <stdio.h>

#define SIZE 1000000

int main(void) {
    unsigned long l=0L,n,t;
    int h=0,i;
    for(i = 2; i < SIZE; i++) {
        t = 0;
        n = i;
        while(1 < n) {
            t++;
            if(n % 2 == 0)
                n = n / 2;
            else
                n = 3 * n + 1;
        }
        if(l < t) {
            l = t;
            h = i;
        }
    }
    printf("%d\n",h);
    return 0;
}
