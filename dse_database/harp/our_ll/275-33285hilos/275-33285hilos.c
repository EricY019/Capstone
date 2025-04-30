#include<stdio.h>
#include<string.h>
#include<pthread.h>
#include<stdlib.h>
#include<unistd.h>

void *trabajo(void *arg);

pthread_t tid[2]; //tid es el identificador de hilo (threadID)

int main(void)
{
    int i = 0;
    int err;

    while(i < 2)  //Queremos crear 2 hilos
    {
        err = pthread_create(&(tid[i]), NULL, trabajo, NULL);
        if (err != 0)
            printf("\nError al crear el hilo :[%d]", strerror(err));
        else
            printf("\n Hilo creado!\n");

        i++;
    }

    sleep(5);
    return 0;
}

void *trabajo(void *arg)
{
    unsigned long i = 0;
    pthread_t id = pthread_self();
    
    if(pthread_equal(id,tid[0]))
    {
        printf("\n Estes es el primer hilo\n");
    }
    else
    {
        printf("\n Este es el segundo hilo\n");
    }

    for(i=0; i<(0xFFFFFFFF);i++);

    return NULL;
}
