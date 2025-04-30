#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
    int big_array[65535];

    int i;
    for(i = 0; i < 65535; i++)
        big_array[i] = 2 * rand();

    i = 0;
    while(++i < 65535)
    {
        int j = i - 1;
        int at_i = big_array[i];
        while(j > -1 && big_array[j] > at_i)
        {
            big_array[j + 1] = big_array[j];
            j--;
        }
        big_array[j + 1] = at_i;


    }

    i = 0;
    for(i = 0; i < 65535; i++)
    {
        printf("%d : ", i);
        printf("%d\n", big_array[i]);
    } 

    return 0;
}
