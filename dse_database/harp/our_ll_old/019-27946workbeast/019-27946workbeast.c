/* iterate.c */
#include <stdio.h>

int 
main (void)
{
  printf("start\n");

  volatile unsigned long long i;
  for (i = 0; i < 1000000000ULL; ++i);

  printf("stop\n");

  return 0;
}
