#include <stdio.h>

int main()
{
  int i, a, b, res;

  const int N = 4000000;

  res = 0;
  a = 1;
  b = 2;

  while (b <= N) {
    if (b % 2 == 0)
      res += b;

    int tmp = b;
    b = b + a;
    a = tmp;
  }

  printf("%d", res);

  return 0;
}
