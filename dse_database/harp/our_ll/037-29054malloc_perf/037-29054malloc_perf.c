#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/* Number of sizeArray : 14 */
int s_sizeArray[] = {8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536};

void
malloc_perf(void)
{
    struct timeval tv;

    for (int i = 0; i < 14; i++){
        
    }
}

void
free_perf(void)
{


}



int main(int argc, char *argv[])
{
    malloc_perf();

    free_perf();

    return 0;
}
