#include <signal.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

volatile int stop = 0;

void sigalarm_handler(int sig)
{
    stop = 1;
}

int main(int argc, char **argv)
{
    struct sigaction sinst;
    unsigned int counter = 0;

    sigemptyset(&sinst.sa_mask);
    sinst.sa_flags = 0;
    sinst.sa_handler = sigalarm_handler;
    sigaction(SIGALRM, &sinst, NULL);

    // Invoke SIGALRM in 10 secs
    alarm(10); 

    while (!stop) {
        counter++;
    }

    printf("Counted till %u \n", counter);
    return 0;
}
