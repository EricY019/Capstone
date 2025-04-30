#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <time.h>

int main(){
    time_t the_time;
    for(int i = 0; i < 10; ++i){
        the_time = time((time_t *)0);
        printf("the_time is: %ld\n", the_time);
        sleep(2);
    }
}
