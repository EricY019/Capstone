#include <stdio.h>

int fib_rec(int n);

int main() {
    int n = 40;
    for(int i = 0;i<=n;i++) {
        int result = fib_rec(i);
        printf("Initvalue: %d Result: %d \n",i,result);
    }
    
}

int fib_rec(int n) {
    if(n<=1) {
        return n;
    } else {
        return fib_rec(n-1) + fib_rec(n-2);
    }
}