#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#define MAXTHREADS 4

char *messages[MAXTHREADS+1]={"Hello 0","Hello 1","Hello 2","Hello 3","Error !!!"};

void *Hello(void *pthreadid) {
    int *idp, id;
    // sleep(1);
    idp = (int *) pthreadid;
    id = *idp;
    printf("My Thread's ID [%d] %s\n", id, messages[id]);
    return NULL;
}

int main(int argc, char *argv[]) {
    pthread_t child[MAXTHREADS];
    int id;
    int i;
    for(id = 0; id < MAXTHREADS; id++) {
        int *id2 = (int*)malloc(sizeof(int));
        *id2 = id;
        printf("Create thread %d\n", id);
        pthread_create(&child[id], NULL, Hello, (void *) id2);
        sleep(1);
    }

    /** Wait for all threads to finish **/
    for (i = 0; i < MAXTHREADS; i++) {
        pthread_join(child[i], NULL);
    }
    //sleep(10);
}
