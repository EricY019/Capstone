#include<stdio.h>
#include<string.h>
#include<pthread.h>
#include<stdlib.h>
#include<unistd.h>

void *trabajo(void *arg);
int variable_global = 0;

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

	sleep(10);

    return 0;
}

void *trabajo(void *arg)
{
    int j = 0;
    /* i es un avariable local*/

    pthread_t id = pthread_self();

    for(j=0; j<10; j++)
    {
    	variable_global++;
    
     	if(pthread_equal(id,tid[0]))
     	{
        	printf("\n El valor de variable global para el primer hilo es: %d\n",variable_global);
     	}
    	else
    	{
        	printf("\n El valor de variable global para el segundo hilo es: %d\n",variable_global);
    	}
    	sleep(1);
   }

    return NULL;
}
