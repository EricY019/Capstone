#include <stdio.h>

int main(int argc, char* argv[])
{
	int i;
	
	printf("Nosso programa recebeu %i argumentos.\n", argc);

	for( i = 0 ; i < argc ; i ++) {
		printf("Parâmetro %i tem valor %s.\n", i, argv[i]);
	}
	return 0;
}
