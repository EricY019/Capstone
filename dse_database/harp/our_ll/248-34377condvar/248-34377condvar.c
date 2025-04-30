#include <unistd.h>
#include <pthread.h>
#include <stdio.h>

pthread_mutex_t mutex;
pthread_cond_t cond = PTHREAD_COND_INITIALIZER;

int flag = 0;

void *my_thread(void *var)
{
	pthread_mutex_lock(&mutex);
	while (flag == 0) {
    	pthread_cond_wait(&cond, &mutex);
	}
	pthread_mutex_unlock(&mutex);

	printf("flag is set\n");
	return NULL;
}

int main()
{
	pthread_t t;

	pthread_create (&t, NULL, my_thread, NULL);
	sleep(10);

	pthread_mutex_lock(&mutex);
	flag = 1;
	pthread_cond_signal(&cond);
	pthread_mutex_unlock(&mutex);

	pthread_join(t, NULL);
	return 0;
}
