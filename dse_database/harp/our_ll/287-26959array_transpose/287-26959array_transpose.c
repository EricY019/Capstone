#include <stdio.h>

#define SIZE 4

void dump_array(int nums[][SIZE])
{
    unsigned i, j;

    for (i = 0; i < SIZE; ++i)
    {
        for (j = 0; j < SIZE; ++j)
            printf(" %5d", nums[i][j]);

        printf("\n");
    }
}

int main()
{
    int nums[SIZE][SIZE], another[SIZE][SIZE];
    unsigned i, j;

    // fill nums
    for (i = 0; i < SIZE; ++i)
        for (j = 0; j < SIZE; ++j)
            nums[i][j] = i * SIZE + j; // can be any other value

    // dump to screen
    printf("Contents of nums:\n");
    dump_array(nums);

    // transpose
    for (i = 0; i < SIZE; ++i)
        for (j = 0; j < SIZE; ++j)
            another[j][i] = nums[i][j]; // watch out for order of coordinates!

    // dump transposed
    printf("\nTransposed array:\n");
    dump_array(another);

    return 0;
}
