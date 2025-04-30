#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

int thd_var[10];
pthread_mutex_t mutex;

void *runner(void *param); /* the thread */

int main()
{
	pthread_t tid[10]; 
	pthread_attr_t attr; 

	int i;

	if (pthread_mutex_init(&mutex, NULL) != 0)
	{
		fprintf(stderr,"Unable to initialize mutex\n");
		return 1;
	}

	pthread_attr_init(&attr);

	for (i = 0; i < 10; i++)
	{
		thd_var[i] = i;
		pthread_create(&tid[i], &attr, runner, (void *) &thd_var[i]);
	}

	for (i = 0; i < 10; i++)
		pthread_join(tid[i],NULL);

	pthread_mutex_destroy(&mutex);

	printf("\n\nMain Thread Finished.\n\n");

}

/* The thread will begin control in this function */
void *runner(void *param)
{
	int * p;
	FILE * f;

	p = (int *) param;

	if (pthread_mutex_lock(&mutex) != 0)
	{
		fprintf(stderr,"Unable to acquire lock\n");
		_exit(2);
	}

	fprintf(stdout, "\nMutex acquired by Thread %d\n", (*p) );
	sleep(1);
		
	f = fopen("1.txt", "a");
	fprintf(f, "\nText 1 written by Thread %d", (*p) );
	fprintf(f, "\nText 2 written by Thread %d", (*p) );
	fprintf(f, "\nText 3 written by Thread %d\n", (*p) );
	fclose(f);

	if (pthread_mutex_unlock(&mutex) != 0)
	{
		fprintf(stderr,"Unable to release mutex\n");
		_exit(3);
	} 

	fprintf(stdout, "Mutex released by Thread %d\n", (*p) );
	sleep(1);

	pthread_exit( (void *) 0 ); 
}
