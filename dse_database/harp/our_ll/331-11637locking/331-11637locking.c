
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#include <pthread.h>

pthread_mutex_t mutex;

int count = 0;

void *runner(void *arg)
{
    char *str;
    int i = 0;

    str=(char*)arg;

    while(i < 10 )
    {
        // Request lock
        pthread_mutex_lock (&mutex);

        // Increase the count safely.
        count++;
        printf("%s says %i\n",str, count);

        // Yield the lock.
        pthread_mutex_unlock (&mutex);

        // Sleep to simulate some work.
        usleep(1);
        ++i;
    }

    return NULL;
}

/**
 * Example with two threads incrementing a shared variable
 * with a mutex.
 */
int main(int argc, char *argv[]) {

    pthread_t pth;
    pthread_t pth2;

    // Initialize the mutex
    pthread_mutex_init(&mutex, NULL);

    // Create two threads.
    pthread_create(&pth, 0, runner, (void *) "Thread 1");
    pthread_create(&pth2, 0, runner, (void *) "Thread 2");

    // wait for our thread to finish before continuing
    pthread_join(pth, 0);
    pthread_join(pth2, 0);

    // Clean up the mutex
    pthread_mutex_destroy(&mutex);

    return 0;
}