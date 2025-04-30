#include <stdio.h>

int fib_rec(int n) {
  int result;
  if (n == 0 || n == 1) {
    result = 1;
  } else {
    result = fib_rec(n - 1) + fib_rec(n - 2);
  }
  return result;
}

int fib_it(int n) {
  int result;
  if (n == 0 || n == 1) {
    result = 1;
  } else {
    int a = 1, b = 1, c = 1;
    for (int i = 1; i < n; i++) {
      a = b;
      b = c;
      c = a + b;
    }
    result = c;
  }
  return result;
}

int main () {
  printf("%d\n", fib_it(40));
  printf("%d\n", fib_rec(40));
  return 0;
}
