#include <stdio.h>

int main()
{
  char v[1024];
  int i;

  printf("BEFORE\n");

  for (i=0; i<1024; i++)
    printf("i=%d\n",i);

  printf("AFTER\n");

  return 0;
}
