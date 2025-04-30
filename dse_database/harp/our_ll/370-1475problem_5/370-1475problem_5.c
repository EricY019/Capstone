#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

int main(int argc, char const *argv[]) {

  char a = 0;
  for (size_t x = 2520; x < 99999999999999; x+=20) {
    for (size_t y = 2; y < 21; y++) {
      if (x % y != 0) {
        break;
      }
      if (y == 20) {
        a = 1;
      }
    }
    if (a == 1) {
      printf("%d\n", x);
      break;
    }
  }

  return 0;
}
