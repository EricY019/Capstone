
/* { dg-do run { target { x86_64*-*-linux* } } } */
/* { dg-shouldfail "tsan" } */

#include <pthread.h>
#include <unistd.h>

void *Thread(void *x) {
  return 0;
}

int main() {
int i;
  for (i = 0; i < 5; i++) {
    pthread_t t;
    pthread_create(&t, 0, Thread, 0);
  }
  sleep(1);
  return 0;
}
/* { dg-output "WARNING: ThreadSanitizer: thread leak.*" } */
