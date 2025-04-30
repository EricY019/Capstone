
// Copyright 2017 Karthik

#include <stdio.h>

int main(void) {
  /*
  char planets[][8] = {"Mercury", "Venus", "Earth",
                       "Mars", "Jupiter", "Saturn",
                       "Uranus", "Neptune", "Pluto"};
  */
  
  char *planets[] = {"Mercury", "Venus", "Earth",
                     "Mars", "Jupiter", "Saturn",
                     "Uranus", "Neptune", "Pluto"};
  
  
  int i, j;

  /*
  for (i = 0; i < 9; i++) {
    for (j = 0; j < 8; j++) {
      printf("%c", planets[i][j]);
    }
    printf("\n");
  }
  */

  
  for (i = 0; i < 9; i++) {
    printf("%s\n", planets[i]);
  }

  char fmt[] = "%d\n";
  int k = 3;

  printf(fmt, k);
  
  return 0;
}
