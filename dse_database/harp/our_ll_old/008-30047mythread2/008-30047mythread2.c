#include <stdio.h>
#include <pthread.h>
#define THREADNUM 10
void * thread_func(void *arg)
{
	int *t = (int *)arg;
	printf("Thread0, arg = %d\n", *t);
	pthread_exit(NULL); 
}
int main()
{
	pthread_t thread[THREADNUM];
	int ret;
	int buffer[THREADNUM];
	int i;
	//Create all thread
	for(i=0; i < THREADNUM; i++)
	{
		buffer[i] = i+1;
		ret = pthread_create(&thread[i], NULL, thread_func, &buffer[i]);
		if(ret != 0) printf("cannot create thread\n");
	}
	//Wait for all thread
	for(i=0; i < THREADNUM; i++)
	{
		pthread_join(thread[i], NULL);
	}
	printf("Exit main\n");
	return 0;
}
