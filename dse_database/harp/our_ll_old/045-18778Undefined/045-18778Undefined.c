#include <stdio.h>
#include <stdlib.h>

void undefined_local() {
    int x;  /* undefined */
    printf("x = %d\n", x);
}

void some_calc(int a) { 
    a = a%2 ? rand() : -a; 
}
	
int main(void) {
    for (int i=0;  i<5;  i++) {
        some_calc(i*i);
        undefined_local();
    }
}

