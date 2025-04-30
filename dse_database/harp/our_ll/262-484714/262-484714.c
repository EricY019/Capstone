#include <stdio.h>

int chain(int i, long num)
{
  if (num == 1)
    return i;
  if (num % 2 == 0)
    return chain(i+1, num/2);
  return chain(i+1, num*3+1);
}

int main()
{
  long num, max=0, maxchain=0;
  for (num=1; num < 1000000; num++) {
    int i = chain(1, num);
    if (i>maxchain) {
      maxchain = i;
      max = num;
    }
  }
  printf("%ld\n", max);
}
