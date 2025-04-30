#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#define NUM 5
int counter = 0;
void *print_counter(void* m) {
  for (int i=0; i< NUM ; ++i) {
    printf("count = %d \n", counter);
    sleep(1);
  }
  return NULL;
}

int main(int argc, char * argv[]) {
  pthread_t t1;
  pthread_create(&t1, NULL, print_counter, NULL);
  for (int i=0; i <NUM; ++i) {
    counter++;
    sleep(1);
  }
  pthread_join(t1, NULL);
  return 0;
}

