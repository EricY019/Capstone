#include <stdio.h>
#include <stdlib.h>

#define N 1000
#define X 200

void quicksort(int *, int, int);
int partition(int*, int, int);
int choosePivot(int*, int, int);
void swaparr(int *, int *);
void swapval(int x, int y);

int main(int argc, char ** argv)
{
    srand(123456);
    int * arr = (int *) malloc(sizeof(int)*N);
    int i;
    for ( i = 0; i < N; i++)
    {
        arr[i] = rand()%X;
    }

    printf("Before Sort:  \n\n");

    for (i = 0; i< N; i++)
    {
        if (i == 0)
        {
            printf("[ ");
        }
        printf("%d ",arr[i]);
        if (i == N-1)
        {
            printf("]\n");
        }
    }

    printf("After Sort:  \n\n");

    quicksort(arr,0,N-1);
    for (i = 0; i< N; i++)
    {
        if (i == 0)
        {
            printf("[ ");
        }
        printf("%d ",arr[i]);
        if (i == N-1)
        {
            printf("]\n");
        }
    }

    free((void*)arr);
    return 0;
}

void quicksort(int * arr, int low, int upp)
{
    if (low < upp)
    {
        int p = partition(arr, low, upp);
        quicksort(arr, low, p-1);
        quicksort(arr, p+1, upp);
    }
}


int partition(int *arr, int low, int upp)
{
    int i;
    int pivotIdx = choosePivot(arr,low,upp);
    int pivotVal = arr[pivotIdx];
    swaparr(&arr[pivotIdx],&arr[upp]);

    int storeIdx = low;

    for (i = low; i < upp; i++)
    {
        if (arr[i] < pivotVal)
        {
            swaparr(&arr[i],&arr[storeIdx]);
            storeIdx++;
        }
    }

    swaparr(&arr[storeIdx],&arr[upp]);
    return storeIdx;
}

void swaparr(int * x, int * y)
{
    int tmp = *x;
    *x = *y;
    *y = tmp;
}

void swapval(int x, int y)
{
    int tmp;
    tmp = x;
    x = y;
    y = tmp; 
}

int choosePivot(int * arr, int low, int upp)
{
    int mid = (low + upp) / 2;
    if (arr[low] > arr[upp])
    {
        swapval(low, upp);
    }
    if (arr[mid] < arr[low])
    {
        swapval(mid,low);
    }
    if (arr[upp] < arr[mid])
    {
        swapval(mid, upp);
    }
    return mid;
}