/*
 * Author: Daniel Cabral Silveira
 *
*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

typedef struct _factorialData {
    int number;
    int result;
    void (*callback)(struct _factorialData*);
} FactorialData;

void factorial(void *args) {
    FactorialData *factorialData = (FactorialData*) args;
    void (*callback)(FactorialData*);

    int number = factorialData->number;
    callback = factorialData->callback;

    int num = 1;
    for(int i = 1; i<=number; i++ ) {
        num *= i;
    }

    factorialData->result = num;
    callback(factorialData);

    pthread_exit(NULL);
}

void startThread(FactorialData *data) {
    pthread_t thread_id;
    int thread = pthread_create(&thread_id, NULL,(void *) factorial, (void *) data);
}

void callbackFunction(FactorialData *factorialData) {
    printf("Factorial is %d\n", factorialData->result);
}

int main(void) {
    FactorialData *data = malloc(sizeof(FactorialData));

    if(!data) {
        printf("Failed to allocate memory\n");
    }

    data->number = 5;
    data->callback = callbackFunction;

    startThread(data);

    sleep(2);

    return 0;
}
