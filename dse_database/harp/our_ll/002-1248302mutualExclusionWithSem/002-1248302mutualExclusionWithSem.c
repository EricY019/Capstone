#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>
#define N_THREADS 3

typedef struct s_threadParams
{
  sem_t *pTheSemaphore;
  int threadNumber;
  int sleepTime;
  int nLoops;
}ThreadParams,*PThreadParams;

void* threadMainFunction(void*);

int main()
{
  int i;
  pthread_t idThreads[N_THREADS];
  sem_t theSemaphore;
  ThreadParams params[]={{&theSemaphore,0,0,10},{&theSemaphore,1,3,2},{&theSemaphore,2,1,4}};

  sem_init(&theSemaphore, 0, 1);
  for(i=0;i<N_THREADS;i++)
    pthread_create(&idThreads[i], NULL, threadMainFunction, (void*) &params[i]);
  for(i=0;i<N_THREADS;i++)
    pthread_join (idThreads[i], NULL);
  printf("Threads finished. Main going to finish \n");
  return 0;
}

void *threadMainFunction(void *arg)
{
  int i;
  PThreadParams pParams=(PThreadParams) arg;
  
  for (i=0;i<pParams->nLoops;i++)
  {
    sem_wait(pParams->pTheSemaphore);
    printf("thread %d in Critical Section\n", pParams->threadNumber);
    printf("thread %d going out from Critical Section\n", pParams->threadNumber);
    sem_post(pParams->pTheSemaphore);
    sleep(pParams->sleepTime);
  }
  return NULL;
}
