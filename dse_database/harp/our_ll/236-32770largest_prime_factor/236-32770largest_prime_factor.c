/*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*/

#include <stdio.h>
#include <stdlib.h>

long N=600851475143;

struct node {
    struct node* next;
    int val;
};

void next_prime(struct node *primes, int n) {
    char found = 0;
    struct node *aux = primes;
    while (!found) {
        if (n%aux->val == 0) {
            n++;
            aux = primes;
        }
        else {
            if (aux->next == NULL) {
                found = 1;
                aux->next = (struct node*) malloc(sizeof(struct node));
                aux->next->val = n;
                aux->next->next = NULL;
            }
            else (aux = aux->next);
        }
    }
}

int main() {
    /* You can't malloc outside the main (or any function). Malloc allocates memory
     on the heap, i.e runtime, so you can't allocate on compile time. You can
     though declare the variable and it will be saved in the program page on
     compile time */
    struct node *primes = (struct node*) malloc(sizeof(struct node));
    primes->val = 2;
    primes->next = NULL;
    while (N > 1) {
        while (N%primes->val == 0) {
            N /= primes->val;
        }
        if (N>1) {
            next_prime(primes, primes->val);
            primes = primes->next;
        }
    }
    printf("%d\n", primes->val);
    return 0;
}
