#include<stdio.h>
#include<ctype.h>
#include<string.h>
#include<stdlib.h>

#define CHECK(PRED) printf("%s ... %s\n",(PRED) ? "passed" : "FAILED", #PRED)
#define LINESIZE 512

void min_max (const int a[], size_t n, int *pmin, int *pmax);
size_t num_digits (unsigned long n);

void min_max (const int a[], size_t n, int *pmin, int *pmax) {

  size_t i;

  if (n >= 1) {

    *pmin = a[0];
    *pmax = a[0];

    for (i = 1; i < n; i++) {
      if (a[i] < *pmin) {
        *pmin = a[i];
      }

      if (a[i] > *pmax) {
        *pmax = a[i];
      }
    }
  }
}

size_t num_digits (unsigned long n) {

  size_t i;
  if (n == 0) {
    printf("%d\n", 1);
    return 1;
  }
  for (i = 0; n != 0; i++) {
    n = (n/10);
  }

  printf("%lu\n", i);

  return i;

}

int is_reversible(unsigned long n) {

  int reverse;
  int rem;
  size_t i;
  int actual;

  actual = n;
  i = n;

  reverse = 0;

  while(i!=0) {
    rem = i%10;
    reverse = rem + (reverse*10);
    i = (i/10);
  }

  if (reverse == actual) {
    printf("worked\n");
    return 1;
  } else {
    printf("failed\n");
    return 0;
  }

}

int main(void) {
  int a[] = {2, 3, 4, 5};
  size_t n = 4;

  int b[] = {1};
  size_t k = 1;

  int pmin = 0;
  int pmax = 0;

  unsigned long p = 12321;
  unsigned long q = 123;
  unsigned long r = 0;

  printf("min max tests\n");

  min_max(a, n, &pmin, &pmax);
  printf("%d - %d\n", pmin, pmax);

  min_max(b, k, &pmin, &pmax);
  printf("%d - %d\n", pmin, pmax);

  printf("num digits tests\n");
  num_digits(p);
  num_digits(q);
  num_digits(r);

  printf("is reversible tests\n");
  is_reversible(p);
  is_reversible(q);
  is_reversible(r);

  return 0;
}
