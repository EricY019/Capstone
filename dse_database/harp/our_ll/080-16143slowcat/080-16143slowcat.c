#include <stdio.h>

/* C 2014, MIT license, "slowcat.c" C. Graff */
/* Usage:     slowcat [STDIN|FILE(S)] */

void slow_cat(FILE *);
int main ( int argc, char *argv[] )
{
	FILE *fip;
	int c, cntr = 1;

	if ( argc > cntr )  
		while ( cntr < argc )
		{
			fip = fopen( argv[cntr++] , "r");
			slow_cat(fip); 
		}
	else	slow_cat(stdin); 

	return 0;
}
void slow_cat(FILE *source)
{
	int c; 
	while ( (c=fgetc(source)) != EOF) 
		putchar(c); 
}

