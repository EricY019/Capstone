#include <stdio.h>

int staticFn() {
  static int x = 0;
  x++;
  return x;
}

int autoFn() {
  auto int x = 0;
  x++;
  return x;
}

int registerFn() {
  register int x = 0;
  x++;
  return x;
}

int main(void) {
  int j;
  for (j = 0; j < 5; j++) {
    printf("Value of autoFn(): %d\n", autoFn());
  }
  for (j = 0; j < 5; j++) {
    printf("Value of registerFn(): %d\n", registerFn());
  }
  for (j = 0; j < 5; j++) {
    printf("Value of staticFn(): %d\n", staticFn());
  }
  return 0;
}