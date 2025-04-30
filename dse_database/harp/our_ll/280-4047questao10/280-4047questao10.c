#include <stdio.h>

#define true 1
#define false 0

typedef int boolean;

void print_arr(int* arr, int size, boolean pares)
{
    int idx;

    for (idx = 0; idx < size; idx++)
    {
        if (arr[idx] != 0)
        {
            boolean par = ((arr[idx] % 2) == 0);
            if (pares && par)
                printf("%d\n", arr[idx]);
            else if (!pares && !par)
                printf("%d\n", arr[idx]);
        }
    }
}

int main(int argc, char *argv[])
{
    int array1[] = {1, 30, 34, 80, 0, 1, 32};

    print_arr(array1+1, 5, true);

    return 0;
}