#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main( void)
{
	char    *p_error;
	int      ndx;

	p_error  = malloc(  10);

	for ( ndx = 0; ndx <= 10; ndx++)
	{
		p_error[ndx] = 'a';
	}    
	p_error[10] = '\0';
	puts( p_error);
	free( p_error);

	return 0;
}
