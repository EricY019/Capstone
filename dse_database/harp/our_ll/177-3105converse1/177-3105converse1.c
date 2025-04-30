#include <stdio.h>

#define LEN 200

void converse(int N, int r)
{
  int array[LEN], top;
  top = -1;
  
  while (N)
  {
    array[++top] = N % r;
    N = N / r;
  }
  
  while (top != -1)
  {
    printf("%d\t", array[top--]);
  }
}

int main()
{
  int N = 1025, r = 2;
  converse(N, r);
  printf("\n");
}
