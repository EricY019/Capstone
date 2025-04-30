#include <stdio.h>
int main(void){
   int i = 0, power = 1;

   while (++i <= 10) // køre med i = 1:10, altså ti gange
      printf("%5d", power *= 2); // starter med at printe 2
   printf("\n");

   return 0;
}
