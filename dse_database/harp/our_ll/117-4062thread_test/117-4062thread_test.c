#include <pthread.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>

#define PID (unsigned int)pthread_self()

pthread_mutex_t mymutex1 = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mymutex2 = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t mycond = PTHREAD_COND_INITIALIZER;

int a = 0;

void *mythread1(void *param)
{
    printf("AAAAAAAAAAAAAAA begin mythread1.  %u\n", PID);
    
    pthread_mutex_lock(&mymutex1);
    while(a != 1)
    {
        printf("AAAAAAAAAAAAAA wait in mythread1.....\n");
        pthread_cond_wait(&mycond,&mymutex1);
    }
    pthread_mutex_unlock(&mymutex1);
    
    printf("AAAAAAAAAAAAA end mythread1.  %u\n", PID);
    return NULL;
}

void *mythread2(void *param)
{
    printf("begin mythread2.  %u\n", PID);

    pthread_mutex_lock(&mymutex1);
    while(a != 1)
    {
        printf("wait in mythread2.\n");
        pthread_cond_wait(&mycond,&mymutex1);
    }
    pthread_mutex_unlock(&mymutex1);

    printf("end mythread2.  %u\n", PID);
    return NULL;
}

int main(void)
{
    printf("begin main thread.  %u\n", PID);
    
    int i;
    pthread_t tid1,tid2;
    pthread_create(&tid1,NULL,mythread1,NULL);
    pthread_create(&tid2,NULL,mythread2,NULL);
    sleep(2);
    
    a = 2;
    printf("\n==============try to wake up mythread1 and mythread2 in main thread. a=%d  %u\n", PID, a);
    if(pthread_cond_broadcast(&mycond)){
        printf("error\n");
        return -1;
    }

    sleep(5);
    a = 1;
    printf("\n===============try to wake up mythread1 and mythread2 in main thread.  a=%d   %u\n", PID, a);
    if(pthread_cond_broadcast(&mycond)){
        printf("error\n");
        return -1;
    }
    
    pthread_join(tid1, NULL);
    pthread_join(tid2, NULL);
    
    printf("end main thread.  %u\n", PID);
    return 0;
}
