#include <stdio.h>

int is_prime(int n)
{
  long i;
  if (n==2) return 1;
  if (n<2) return 0;
  for (i=2; i<=n/2; i++) {
    if (n%i == 0)
      return 0;
  }
  return 1;
}

int main()
{
  long i=2, num=0;
  while(num < 10001) {
    if (is_prime(i))
      num++;
    i++;
  }
  i--;
  printf("%ld\n", i);
}
