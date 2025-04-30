#include <stdio.h>

int
main(
  int argc,
  char const *argv[])
{

  int A[10] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
  int N;
  int *ptr_a = NULL;

  ptr_a = &A;
  printf("%d\n", ptr_a);

  ptr_a++;
  printf("%d\n", ptr_a);

  ptr_a += 4;
  printf("%d\n", ptr_a);

  ptr_a -= 2;
  printf("%d\n", ptr_a);

  N = &A[3] - &A[0];
  printf("%d\n", N);

  N = &A[0] - &A[3];
  printf("%d\n", N);

  if (ptr_a > &A[2]) printf("Yep\n");

  int *p = &A;
  for (; p <= &A[1000]; ++p) printf("%d [%p]\n", *p, p);

  int lol[10][9][8][7][6][5];
  lol[0][0][0][0][0][0] = 1;
  printf("%d\n", lol[0][0][0][0][0][0]);

  return 0;
}
