#include <stdio.h>
#include <stdlib.h>
#define N 10000000
#define MASTER 0

void seqSum(int *a, int *b, int *c) {
  for (int i = 0; i < N; i++)
    c[i] = a[i] + b[i];
}

void fillRandomVec(int *x) {
  for (int i = 0; i < N; i++)
    x[i] = rand() % 50;
}

void showVec(int *x) {
  for (int i = 0; i < N; i++)
    printf("%d ", x[i]);
}

int main() {
  int *a, *b, *c;
  a = (int *) malloc(N * sizeof(int));
  b = (int *) malloc(N * sizeof(int));
  c = (int *) malloc(N * sizeof(int));
  fillRandomVec(a);
  fillRandomVec(b);
  seqSum(a, b, c);
  // printf("A\n");
  // showVec(a);
  // printf("B\n");
  // showVec(b);
  // printf("C\n");
  // showVec(c);
  free(a);
  free(b);
  free(c);
  return 0;
}
