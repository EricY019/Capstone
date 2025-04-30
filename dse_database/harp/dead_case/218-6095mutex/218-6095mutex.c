#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

int * enteroCompartido;
pthread_mutex_t * semaforo;

void * procedimiento(void * in)
{
	int tid = (int) in, i;
	for(i = 0; i < 10000; i++)
	{
		pthread_mutex_lock(semaforo);
		enteroCompartido[0]++;
		if(!(i+1 < 10000))
			printf("Hola soy la hebra %d y el ultimo numero que deje fue %d\n", tid, *enteroCompartido);
		pthread_mutex_unlock(semaforo);
	}
}

int main(int argc, char * argv[])
{
	// reserva memoria para enteroCompartido
	enteroCompartido = (int*) malloc(sizeof(int));

	// reserva memoria para semaforo
	semaforo = (pthread_mutex_t*) malloc(sizeof(pthread_mutex_t));
	
	// Inicializo el semáforo
	pthread_mutex_init(semaforo, NULL);

	int i, j = 4;
	pthread_t * hebra1 = (pthread_t*) malloc(sizeof(pthread_t) * 4);
	for(i = 0; i < j; i++)
		pthread_create(&hebra1[i], NULL, &procedimiento, (void*) i);
	
	for(i = 0; i < j; i++)
		pthread_join(hebra1[i], NULL);
	printf("Hebra padre ha terminado de esperar por sus hijas\n");
	printf("- Finalmente enteroCompartido= %d\n", *enteroCompartido);
}
