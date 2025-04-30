/* File: cmdLine.c 
   Author: Cindy_
   Description: Gets arguments from command line and prints
*/
#include <stdio.h>

int main( int argc, char *argv[]){
   int i, n = argc;
   for ( i = 0; i < n; i++ ) {
      printf("Argument %d is %s\n", i, argv[i] );
   }
   return( 0 );
}
