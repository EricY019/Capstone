#include <stdlib.h>

#define LENGTH 10000000

int main() {
  // Allocate the memory.
  int * buffer = malloc(LENGTH * sizeof(int));

  // Seed the memory.
  for (int index = 0; index < LENGTH; index++) {
    buffer[index] = index;
  }

  // Free the memory.
  free (buffer);

  return 0;
}
