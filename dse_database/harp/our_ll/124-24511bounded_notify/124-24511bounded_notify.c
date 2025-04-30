
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#include <pthread.h>

pthread_mutex_t mutex;
pthread_cond_t cond;

#define MAX_LENGTH 10
int buffer[MAX_LENGTH];

int duration = 20;
int length = 0;

void *producer(void *arg)
{
    char *str;

    str=(char*)arg;
    for(int i = 0; i < duration; i++) {

        // Request lock
        pthread_mutex_lock(&mutex);

        while(length == MAX_LENGTH) {
            printf("Producer %s buffer full\n", str);
            pthread_cond_wait(&cond, &mutex);
        }

        // Add an element to the buffer safely.
        buffer[length] = i;
        length++;
        printf("Producer %s length %d\n",str, length);

        // Signal the consumer thread a new element is available
        pthread_cond_signal(&cond);

        // Yield the lock.
        pthread_mutex_unlock(&mutex);

        // Simulate work.
        //usleep(1);
    }

    return NULL;
}

void *consumer(void *arg)
{
    char *str;

    str=(char*)arg;
    for(int i = 0; i < duration; i++) {

        // Request lock
        pthread_mutex_lock(&mutex);

        // Check if there elements in the buffer.
        while(length == 0) {
            printf("Consumer %s buffer empty\n", str);
            pthread_cond_wait(&cond, &mutex);
        }

        // Decrease the count.
        length--;

        // Add an element to the buffer safely.
        int temp = buffer[length];
        printf("Consumer %s value %d\n",str, temp);

        if(length+1 == MAX_LENGTH) {
            // Signal the producer thread that the buffer is not full anymore.
            printf("Consumer %s buffer no longer full\n", str);
            pthread_cond_signal(&cond);
        }

        // Yield the lock.
        pthread_mutex_unlock(&mutex);

        // Simulate work
        usleep(3);
    }

    return NULL;
}

/**
 * Example with two threads incrementing a shared variable
 * with a mutex.
 */
int main(int argc, char *argv[]) {

    pthread_t producer_thread;
    pthread_t producer_thread2;
    pthread_t consumer_thread;
    pthread_t consumer_thread2;

    // Initialize the mutex
    pthread_mutex_init(&mutex, NULL);

    // Create threads.
    pthread_create(&producer_thread, 0, producer, (void *) "1");
    pthread_create(&producer_thread2, 0, producer, (void *) "2");
    pthread_create(&consumer_thread, 0, consumer, (void *) "1");
    pthread_create(&consumer_thread2, 0, consumer, (void *) "2");

    //void ** retval;

    // wait for our thread to finish before continuing
    pthread_join(producer_thread, 0);
    pthread_join(producer_thread2, 0);
    pthread_join(consumer_thread, 0);
    pthread_join(consumer_thread2, 0);

    // Clean up the mutex
    pthread_mutex_destroy(&mutex);

    return 0;
}