#include<stdio.h>

#ifndef N
#define N 5000
#endif
#define M 1000000000

int a[N][N], b[N][N];

int main() {
  int i, j, sum;
  #pragma omp parallel sections
  {
    #pragma omp section
    for (i = 0; i < N; i++)
      for (j = 0; j < N; j++)
        a[i][j] = i + j;
    #pragma omp section
    for (i = 0; i < N; i++)
      for (j = 0; j < N; j++)
        b[i][j] = i - j;
  }
  sum = 0;
  for (i = 0; i < N; i++)
    for (j = 0; j < N; j++)
      sum += a[i][j];
  printf("%d\n", sum);
  sum = 0;
  for (i = 0; i < N; i++)
    for (j = 0; j < N; j++)
      sum += b[i][j];
  printf("%d\n", sum);
  return 0;
}

