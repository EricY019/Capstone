#include <stdlib.h>
#include <stdio.h>
#include <string.h>

struct node* gen_primes(const int max);
struct node** gen_factors(const int max, struct node* primes);
int relative_prime(int n, int d, struct node** factors);

struct node {
    int value;
    struct node* next;
};

int main(int argc, char** argv) {
    const int max = 12000;
    struct node* primes = gen_primes(max);
    struct node** factors = gen_factors(max + 1, primes);

    int count = 0;
    for (int d = 2; d <= max; ++d) {
        for (int n = d / 3 + 1; n < (d - 1) / 2 + 1; ++n) {
            double result = 1.0 * n / d;
            if (result > 1.0 / 3.0 && result < 1.0 / 2.0 && relative_prime(n, d, factors)) {
                count++;
            }
        }
    }

    printf("%d\n", count);
    return EXIT_SUCCESS;
}

struct node* gen_primes(const int max) {
    int* primes = calloc(max, sizeof(int));

    primes[0] = 1;
    primes[1] = 1;

    for (int i = 2; i < max; ) {
        for (int j = i * 2; j < max; j += i) {
            primes[j] = 1;
        }
        
        for (i += 1; i < max; i++) {
            if (!primes[i]) {
                break;
            }
        }
    }

    struct node* head = 0;
    struct node* curr = 0;
    for (int i = 0; i < max; ++i) {
        if (!primes[i]) {
            struct node* n = calloc(1, sizeof (struct node));
            n->value = i;
            if (!head) {
                head = n;
            } else {
                curr->next = n;
            }
            curr = n;
        }
    }
    free(primes);
    return head;
}

struct node** gen_factors(const int max, struct node* primes) {
    struct node** factors = calloc(max, sizeof(struct node*));

    for (int i = 1; i < max; ++i) {
        int n = i;
        struct node* n_factors = factors[i];
        for (const struct node* curr = primes; curr; curr = curr->next) {

            if (n % curr->value == 0) {
                n /= curr->value;

                struct node* factor = calloc(1, sizeof(struct node));
                factor->value = curr->value;
                
                if (n_factors == 0) {
                    n_factors = factor;
                    factors[i] = n_factors;
                } else {
                    n_factors->next = factor;
                    n_factors = factor;
                }
            } else if (curr->value > n) {
               break;
            } 
        }
    }
    return factors;
}

int relative_prime(int n, int d, struct node** factors) {
    for (const struct node* n_factor = factors[n]; n_factor; n_factor = n_factor->next) {
        for (const struct node* d_factor = factors[d]; d_factor; d_factor = d_factor->next) {
            if (n_factor->value == d_factor->value) {
                return 0;
            }
        }
        
    }
    return 1;
}
