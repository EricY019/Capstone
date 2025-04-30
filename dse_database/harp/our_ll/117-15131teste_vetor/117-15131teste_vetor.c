#include <stdio.h>
#include <stdlib.h>
#include <time.h>


void geraValoresVetor (int *v) {

	int i;
	
	srand(time(NULL));
	
	for (i = 0; i < 10; i++)
		v[i] = rand()%100;

	for (i = 0; i < 10; i++)
		printf("v[%d] = %d\n", i, v[i]);

}

int main() {

	int v[15];

	geraValoresVetor(v);


	return 0;

}