/*
 * DelayTest.c
 * Jim Lewis
*/

#include <time.h>
#include <stdio.h>
#include <stdlib.h>

void pause2( unsigned long msecs );

int main()
{
    unsigned long delay = 500;
    printf("Starting ... \ndelay 1/2 second ... \n");
    pause2( delay );
    printf("now delay 3 seconds ... \n");
    delay = 3000;
    pause2( delay );
    printf("now delay 5 seconds ... \n");
    pause2( 5000 );
    printf("Done \n");
}

void pause2( unsigned long msecs )
{
    unsigned long finish = 0, start = 0;
    start = clock();
    while( finish < msecs )
    {
        finish = clock() - start;
        finish = finish / (CLOCKS_PER_SEC / 1000);
    }
}
