#include <pthread.h>
#include <stdio.h>
#define MAX_THREADS 4

void* printStuff()
{
  printf("Nova thread criada. TID = %u!\n",pthread_self());
  pthread_exit(NULL);
}

int main()
{
  pthread_t threads[MAX_THREADS];
  for(int i = 0; i < MAX_THREADS; i++){
    pthread_create(&threads[i],NULL,printStuff,NULL);
  }
  for(int i = 0; i < MAX_THREADS; i++){
    pthread_join(threads[i],NULL);
  }
  pthread_exit(NULL);
}
