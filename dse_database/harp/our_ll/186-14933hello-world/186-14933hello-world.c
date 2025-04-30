#include <stdio.h>

int main(int argc, char const *argv[]) {
   int i;

   printf("Hello, World!\n\n");

   /* Loops and prints the parameters passed */
   printf("argc: %d\n", argc);

   for (i=0; i<argc; i++) {
      printf("argv[%d] value: %s\n", i, argv[i]);
      printf("argv[%d] address: %d\n", i, *argv[i]);
   }

   return 0;
}
