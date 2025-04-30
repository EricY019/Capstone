#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char ** argv) {
    for(int i = 0; i<20;i++){
        unsigned int wait_time = (unsigned int) abs(rand() % 1000000);
        double sec_wait = (double) wait_time/1000000;
        printf("Waiting for %e seconds \n", sec_wait);
        usleep(wait_time);
    }
return 0;
}