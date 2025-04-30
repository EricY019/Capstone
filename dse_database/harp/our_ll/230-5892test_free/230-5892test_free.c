#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
	char *a = NULL, *b;
	int i;
	a = malloc(20);
	strcpy(a, "AAAAAAAAAAA");
	b = a;
	for(i=0; i<20 ; i++)
		printf("%3d ", b[i]);
	printf("\n");
	free(a);
	for(i=0; i<20 ; i++)
		printf("%3d ", b[i]);
	printf("\n");
	printf("a=%p b=%p\n", a, b);	
	
	return 0;
}
