#include <stdio.h>
#include <pthread.h>
#include <sched.h>
#include <unistd.h>

void *thread_entry(void *ptr)
{
	char *name = (char *)ptr;

	printf("%s-A\n", name);

	sleep(1); //sched_yield();

	printf("%s-B\n", name);

	sleep(1); //sched_yield();

	printf("%s-C\n", name);
}

int main()
{
#define MAX_THREAD	3
    pthread_t thread[MAX_THREAD];
    char *thread_name[MAX_THREAD] = {"thread1", "thread2", "thread3"};
    int i;

    for (i = 0; i < MAX_THREAD; i++)
        pthread_create(&thread[i], NULL, thread_entry, thread_name[i]);

    for (i = 0; i < MAX_THREAD; i++)
        pthread_join(thread[i], NULL);

    return 0;
}

