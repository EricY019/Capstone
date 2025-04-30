#include <stdio.h>

/**
 * HelloWorld example
 * compilation: cc -std=c99 -Wall hello_world.c -o hello_world
 **/

void sayNTimesCoucou(unsigned int n) {
  for (int i = 0; i < n; i++) {
    puts("Coucou");
  }
}

int main(int argc, char** argv) {
  puts("Hello, world!");
  for (int i = 0; i < 5; i++) {
    puts("Hello");
  }
  int i = 0;
  while (i < 10) {
    puts("Loop Iteration");
    ++i;
  }
  sayNTimesCoucou(3);
  return 0;
}
