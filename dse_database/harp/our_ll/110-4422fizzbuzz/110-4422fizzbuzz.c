#include <stdio.h>

void fizzbuzz(int n){

    for (int i=1; i <= n; i++){
        if (i % 3 == 0 && i % 5 ==0){
            printf("fizzbuzz %d \n", i);
        }
        else if (i % 3 == 0){
            printf("fizz %d \n", i);
        }
        else if(i % 5 == 0){
            printf("buzz %d \n", i);
        }
    }
}

int main(void){
    fizzbuzz(15);
    return 0;
}
