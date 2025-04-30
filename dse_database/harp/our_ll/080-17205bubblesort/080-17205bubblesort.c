
#include <stdio.h>

void printarray(int size, int* v) {
    if (size > 0) {
        printf("%d", v[0]);
        for (int i = 1; i < size; ++i) {
            printf(", %d", v[i]);
        }
    }
}

// Returns index with min value.
// If more than one index has the same value, the first is returned.
int mini(int size, int* v) {
    int min = 0;
    for (int i = 0; i < size; ++i) {
        if (v[i] < v[min]) {
            min = i;
        }
    }
    return min;
}

// Swaps contents at index i and j.
void swapi(int* v, int j, int i) {
    int temp = v[j];
    v[j] = v[i];
    v[i] = temp;
}

// Sorts v.
void bubblesort(int size, int* v) {
    for (; size > 1; --size, ++v) {
        int max = mini(size, v);
        swapi(v, max, 0);
    }
}


int main(int argc, char** argv) {
    int v[] = {1,7,14,12,12,3,5,4,732,1000,1};
    int size = sizeof(v)/sizeof(v[0]);

    printarray(size, v);
    printf("\n");

    bubblesort(size, v);

    printarray(size, v);
    printf("\n");

    return 0;
}

