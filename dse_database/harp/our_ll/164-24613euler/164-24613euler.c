#include <stdio.h>

int main()
{
  int n = 100000000;
  printf("\nFinding sum of multiples of 3 and 5 below %d\n", n);

  long total = 0;
  for (int i = 0; i < n; ++i) {
    if (i % 3 == 0) {
      total = total + i;
    }
    else if (i % 5 == 0) {
      total = total + i;
    }
  }
  printf("Result: %ld\n", total);

  return 0;
}
