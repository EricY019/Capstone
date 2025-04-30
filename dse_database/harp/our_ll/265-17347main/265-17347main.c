//
//  main.c
//  quick_sort
//
//  Created by Pablo Padilla on 3/22/15.
//  Copyright (c) 2015 pgpb.padilla. All rights reserved.
//

#include <stdio.h>
#include <time.h>
#include <stdlib.h>

void quick_sort(int array[], int start, int end);
int partition(int array[], int start, int end);

void print(int array[], int size);

int main(int argc, const char * argv[]) {

    int size = 100;
    int array[size];
    
    int x = 0;
    
    srand((int)time(NULL));
    
    for (x = 0; x<size; ++x) {
        array[x] = rand() % size;
    }
    
    int* start = array;
    
    printf("Before sorting... \n");
    print(array, size);
    
    quick_sort(start, 0, size);
    
    printf("After sorting... \n");
    print(array, size);
    
    return 0;
}

void print(int array[], int size) {
    int i = 0;
    for (i = 0; i<size; ++i) {
        if (i%30 == 0) {
            printf("\n");
        }
        printf("%d\t", array[i]);
    }
    printf("\n");
}

void swap(int array[], int idx1, int idx2) {
    int tmp = array[idx1];
    array[idx1] = array[idx2];
    array[idx2] = tmp;
}

int partition(int array[], int start, int end) {
    
    int pivot_value = array[end];
    int pivot_idx = start - 1;
    int idx;
    
    for (idx = start; idx < end; ++idx) {
        if (array[idx] <= pivot_value) {
            pivot_idx++;
            swap(&array[0], pivot_idx, idx);
        }
    }
    swap(&array[0], pivot_idx+1, end);
    
    return pivot_idx;
}

void quick_sort(int array[], int start, int end) {
    int pivot;
    
    if (start < end) {
        pivot = partition(array, start, end);
        quick_sort(array, start, pivot - 1);
        quick_sort(array, pivot + 1, end);
    }
    return;
}
