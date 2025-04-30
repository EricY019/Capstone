#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

void * procedimiento(void * in)
{
	int tid = (int) in;
	printf("Hola soy la hebra %d\n", tid);
}

int main(int argc, char * argv[])
{
	pthread_t * hebra1 = (pthread_t*) malloc(sizeof(pthread_t) * 40);
	int i, j = 10;
	for(i = 0; i < j; i++)
		pthread_create(&hebra1[i], NULL, &procedimiento, (void*) i);
	
	for(i = 0; i < j; i++)
		pthread_join(hebra1[i], NULL);
	printf("Hebra padre ha terminado de esperar por sus hijas\n");
}
