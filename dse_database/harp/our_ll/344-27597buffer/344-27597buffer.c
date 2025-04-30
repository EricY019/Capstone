#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main( ){


char *buffer=malloc(50);
char buff1[50]="How now brown cow.";


buffer = buff1;

printf("buff1 = %s\n", buff1);
printf("buffer = %s\n", buffer);


   for( long x = strlen(buffer); x != 0; x--){
      fputc(*buffer, stdout);
      fputc('\n', stdout);

     printf("length of buffer = %ld, buffer[%ld] = %c\n", strlen(buffer), x, *buffer);
     *buffer++;
   }
   


}
