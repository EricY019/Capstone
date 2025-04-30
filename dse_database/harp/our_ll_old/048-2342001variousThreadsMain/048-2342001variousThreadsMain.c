#include <stdio.h>
#include <unistd.h>
#include <pthread.h>

void* threadMainFunction1(void*);
void* threadMainFunction2(void*);

int main()
{
  pthread_t idThread1, idThread2, idThread3;

  printf("creating threads ......\n");
  pthread_create(&idThread1, NULL, threadMainFunction1, (void*) 1);
  pthread_create(&idThread2, NULL, threadMainFunction1, (void*)2);
  pthread_create(&idThread3, NULL, threadMainFunction2, (void*)"kuku");
  pthread_join (idThread1, NULL);
  pthread_join (idThread2, NULL);
  pthread_join (idThread3, NULL);
  printf("Threads finished. Main going to finish \n");
  return 0;
}

void *threadMainFunction1 (void *arg)
{
  int i, j,  n = (int) arg;
  
  for (i=0;i<10;i++)
  {
    sleep(1);
    for(j=0;j<n;j++) printf("\t\t");
    printf (" ...... %d ...........\n", n);
  }
  return NULL;
}

void *threadMainFunction2 (void *arg)
{
  int i;
  char* pStr= (char*)arg;
  
  for(i=0;i<5;i++)
  {
    sleep(2);
    printf("%s\n", pStr);
  }
  return NULL;
}
