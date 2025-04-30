#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <time.h>

static void sleep(int ms)
{
    struct timespec waittime;

    waittime.tv_sec = (ms / 1000);
    ms = ms % 1000;
    waittime.tv_nsec = ms * 1000 * 1000;

    nanosleep(&waittime, NULL);
}

void *threadfunc(void *c)
{
    int id = (int)c;
    int i = 0;

    for (i = 0; i < 12; ++i)
    {
        printf("thread %d, iteration %d\n", id, i);
        sleep(1000);
    }

    return 0;
}

int main()
{
    int i = 4;

    for (; i; --i)
    {
        pthread_t *tcb = malloc(sizeof(*tcb));

        pthread_create(tcb, NULL, threadfunc, (void *)i);
    }

    sleep(4000);

#ifdef USE_PTHREAD_EXIT
    pthread_exit(0);
#endif

    return 0;
}