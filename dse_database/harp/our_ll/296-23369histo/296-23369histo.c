#include <stdio.h>

#define PICTURE_WIDTH 4096
#define PICTURE_HEIGHT 4096
#define PICTIRE_Y_DEPTH 256

int main(int argc, char **argv, char **envp)
{
    char y[PICTURE_WIDTH][PICTURE_HEIGHT]={0};
    int histogram_value[PICTIRE_Y_DEPTH]={0};
    int val;

    for (int h=0;h < PICTURE_HEIGHT; ++h)
    {
        for (int w=0; w < PICTURE_WIDTH; ++w)
        {
        val=y[w][h]; // set temporal value for the current pixel
        histogram_value[val]=histogram_value[val]++; //incrementing counter of particular Y
        }
    }
for (int j=0; j < PICTIRE_Y_DEPTH; ++j) printf("%d", histogram_value[j]);
printf("\r\r");
return 0;
}

