#include <stdio.h>

int main() {
    int counter;
    for(counter = 1; counter < 7; counter++) {
        if(counter == 3) {
            printf("We call break and you won't see counter = 3 or higher\n");
            break;
        }        
        
        printf("Number of counter: %d\n", counter);
    }
}
