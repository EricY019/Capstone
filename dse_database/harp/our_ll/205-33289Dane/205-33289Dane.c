#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){
  srand(time(0));
  FILE *out;
  out = fopen("Dane.txt", "w");
  int i;
  for (i=0; i<1000; i++) fprintf(out, "%d\n", rand()%256);
  fclose(out);
}
