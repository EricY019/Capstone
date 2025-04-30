#include <pthread.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <assert.h>

#define THREAD_SIZE 8

void *job1(void *arg)
{
    pthread_t pid = pthread_self();
    sleep(1);
    printf("job1: print %p\n", arg);
    printf("job1: pthread_self: %lu\n", pid);
    sleep(1);

    return arg;
}

void *job2(void *arg)
{
    pthread_t pid = pthread_self();
    sleep(1);
    printf("job2: print %p\n", arg);
    printf("job2: pthread_self: %lu\n", pid);
    sleep(1);
    pthread_exit(NULL);

    return arg;
}

void *job3(void *arg)
{
    pthread_t pid = pthread_self();
    pthread_detach(pid);
    sleep(1);
    printf("job3: print %p\n", arg);
    printf("job3: pthread_self: %lu\n", pid);
    sleep(1);

    return arg;
}

void *job4(void *arg)
{
    pthread_t pid = pthread_self();
    pthread_detach(pid);
    sleep(1);
    printf("job4: print %p\n", arg);
    printf("job4: pthread_self: %lu\n", pid);
    sleep(1);

    return arg;
}

int main()
{
    pthread_t tid1[THREAD_SIZE];
    pthread_t tid2[THREAD_SIZE];
    pthread_t tid3[THREAD_SIZE];
    pthread_t tid4[THREAD_SIZE];
    int i;
    void *res;

    for (i = 0; i < THREAD_SIZE; i++) {
        assert(pthread_create(&tid1[i], NULL, job1, (void*)i) == 0);
        assert(pthread_create(&tid2[i], NULL, job2, (void*)i) == 0);
        assert(pthread_create(&tid3[i], NULL, job3, (void*)i) == 0);
        assert(pthread_create(&tid4[i], NULL, job4, (void*)i) == 0);
    }

    for (i = 0; i < THREAD_SIZE; i++) {
        assert(pthread_join(tid1[i], &res) == 0);
        assert(res == (void*)i);
        assert(pthread_join(tid2[i], &res) == 0);
        assert(res == NULL);
    }

    return 0;
}
