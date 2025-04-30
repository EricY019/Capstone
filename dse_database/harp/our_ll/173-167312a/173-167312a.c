#include <stdio.h>

void print_pattern(int ile_gwiazdek, char *pattern) {
  for(int i = 0; i < ile_gwiazdek; i++) {
    printf("%s", pattern);
  }
  printf("\n");
}

int main() {
  int n = 4;

  for(int i = 0; i < n; i++) {
    print_pattern(8, " *");
    print_pattern(8, "* ");
  }
}
