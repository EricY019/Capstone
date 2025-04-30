#include <stdio.h>
/*
 *   gcc -O3 -o 10 10.c
 */

int prime(int n){
    int i = 2;
    if (i <= 1)
        return 0;
    for(i =2; i * i <=n ; i++){
        if( n % i == 0 ){
            return 0;
        }
    }
    return 1; 
}

int main(){

    int i = 3;
    long int sum = 2;
    int max = 2000000;
    for (i =3; i < max; i=i+2){
        if(prime(i)){
            sum += i;
        }
    }
    printf("result is %ld\n", sum);
}
