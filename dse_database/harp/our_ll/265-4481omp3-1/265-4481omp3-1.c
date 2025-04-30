#include<stdio.h>

#ifndef N
#define N 5000
#endif
#define M 1000000000

int a[N][N], b[N][N];

int main() {
  int i, j, sum;
  {
    for (i = 0; i < N; i++)
      for (j = 0; j < N; j++)
        a[i][j] = i + j;
    for (i = 0; i < N; i++)
      for (j = 0; j < N; j++)
        b[i][j] = i - j;
  }
  sum = 0;
  for (i = 0; i < N; i++)
    for (j = 0; j < N; j++) {
      sum += a[i][j];
      sum %= M;
    }
  printf("%d\n", sum);
  sum = 0;
  for (i = 0; i < N; i++)
    for (j = 0; j < N; j++) {
      sum += b[i][j];
      sum %= M;
    }
  printf("%d\n", sum);
  return 0;
}
