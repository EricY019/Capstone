#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

#define NUM 5
void *print(void *m) {
  char *cp = (char*) m;
  for (int i=0;i<NUM; ++i) {
    printf("%s\n", cp);
    fflush(stdout);
    sleep(1);
  }
  return NULL;
}

int main(int argc, char* argv[]) {
  pthread_t t1, t2;
  pthread_create(&t1, NULL, print, (void *) "t1 thread");
  pthread_create(&t2, NULL, print, (void *)"t2 thread");
  pthread_join(t1, NULL);
  pthread_join(t2, NULL);
  return 0;
}