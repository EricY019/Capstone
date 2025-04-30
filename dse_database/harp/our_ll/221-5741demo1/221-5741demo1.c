#include <pthread.h>
#include <stdio.h>

void *child_thread(void *arg)
{
    long num = (long)arg;
    long i = 0, sum = 0;
    while (++i <= num)
        sum += i;
    pthread_exit((void *)sum);
    return 0;
}

int main(void)
{
    long total;
    pthread_t h_thread;
    pthread_create(&h_thread, NULL, child_thread, (void *)100);
    pthread_join(h_thread, (void *)&total);
    printf("Total is %ld\n", total);
    return 0;
}
