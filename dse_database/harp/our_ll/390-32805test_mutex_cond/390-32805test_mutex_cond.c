#include<stdio.h>
#include<unistd.h>
#include<pthread.h>

#define MAX_COUNT 10
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t cond = PTHREAD_COND_INITIALIZER;
int count = 1;
//1 3 5 7 9
void* fun1(void *arg)
{
	pthread_mutex_lock(&mutex);
	while(count <= MAX_COUNT)
	{
		if(count % 2 == 1)
		{
			printf("This is threadfun1 %d\n", count);
			count++;
			pthread_cond_signal(&cond);
		}
		else
			pthread_cond_wait(&cond, &mutex);
		sleep(1);
	}
	pthread_mutex_unlock(&mutex);
}
//2 4 6 8 10
void* fun2(void *arg)
{
	pthread_mutex_lock(&mutex);
	while(count <= MAX_COUNT)
	{
		if(count % 2 == 0)
		{
			printf("This is threadfun2 %d\n", count);
			count++;
			pthread_cond_signal(&cond);
		}
		else
			pthread_cond_wait(&cond, &mutex);
	}
	pthread_mutex_unlock(&mutex);
}
int main(int argc, char const* argv[])
{
	pthread_t tid[2];
	pthread_create(&tid[0], NULL, fun1, NULL);
	// sleep(1);
	pthread_create(&tid[1], NULL, fun2, NULL);

	for(int i=0; i<2; ++i)
	{
		pthread_join(tid[i],NULL);
	}
	return 0;
}
