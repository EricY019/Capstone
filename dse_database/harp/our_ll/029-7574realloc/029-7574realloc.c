#include <stdlib.h>
#include <stdio.h>

void print_all(int *p, int p_len) {
  for (int i = 0; i < p_len; i++){
    printf("p[%d] = %d\n", i, p[i]);
  }
  printf("=================\n");
}

int main(int argc, char const *argv[]) {
  int *p = NULL;
  if (p == NULL) {
      p = (int*) malloc(5*sizeof(int));
  }
  p[0] = 17;
  print_all(p, 5);
  p = (int*) realloc(p, 11*sizeof(int));
  p[9] = 9;
  print_all(p, 11);

  free(p);
  p = NULL;
  if (p == NULL) {
      printf("Testing for NULL is positive\n");
  }

  p = (int*) malloc(6*sizeof(int));
  p[3] = 4444;
  print_all(p, 6);
  free(p);
}
