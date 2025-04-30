#include <stdio.h> 

int NUM = 111181111; 

int is_prime(int n) { 
    int i; 
    for(i = 2; i < n; i++) { 
        if (n % i == 0) { 
            return 0; 
        } 
    } 
    return 1; 
} 

int main() { 
    int result; 

    result = is_prime(NUM); 
    printf("%d\n", result); 

    return 0; 
}
