#include <pthread.h>
#include <stdio.h>

/* Each thread will execute this function */
static void * loop(void *in)
{
	int i;
	int name;

	name = *((int *)in);

	/* Count up to 100 million */
	for (i = 0; i < 100000000; i++) {

		/* Every time we get through a million, say so */
		if (i % 1000000 == 0) {
			(void) printf("Thread %d: %d\n", name, i);
		}
	}
	return ((void *)NULL);
}

int
main(void)
{
	pthread_t	tid1;
	pthread_t	tid2;
	pthread_t	tid3;
	int		thread1 = 1;
	int		thread2 = 2;
	int 	thread3 = 3;
	/* Create our threads */
	pthread_create(&tid1, NULL, loop, (void *)&thread1);
	pthread_create(&tid2, NULL, loop, (void *)&thread2);
	pthread_create(&tid3, NULL, loop, (void *)&thread3);
	/* Wait for our threads */
	pthread_join(tid1, NULL);
	pthread_join(tid2, NULL);
	pthread_join(tid3, NULL);
	return (0);
}

