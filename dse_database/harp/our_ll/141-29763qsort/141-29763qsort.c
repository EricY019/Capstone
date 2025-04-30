#include <stdio.h>
#include <stdlib.h>

void quick_sort(int array[], size_t array_length);
void array_dump(int array[], size_t array_length);
static void swap(int *x, int *y);

int main(void) {
    int array[] = { 1, 3, 8, 2, 4, 9, 6, 5, 7, 0 };

    array_dump(array, sizeof(array) / sizeof(int));
    quick_sort(array, sizeof(array) / sizeof(int));
    array_dump(array, sizeof(array) / sizeof(int));

    return 0;
}

void quick_sort(int array[], size_t array_length) {
    int start = 0;
    int end = array_length - 1;
    int key_index = 0;

    if (array_length < 1) {
        return;
    }

    while (start != end) {
        while (start != end) {
            if (array[end] < array[key_index]) {
                swap(array + end, array + key_index);
                key_index = end;
                
                break;
            } else {
                --end;
            }
        }

        while (start != end) {
            if (array[start] > array[key_index]) {
                swap(array + start, array + key_index);
                key_index = start;

                break;
            } else {
                ++start;
            }
        }
    }

    quick_sort(array, start);
    quick_sort(array + start + 1, array_length - start - 1);
}

void array_dump(int array[], size_t array_length) {
    for (int index = 0; index < array_length; ++index) {
        printf("%d ", array[index]);
    }
    printf("\n");
}

static void swap(int *x, int *y) {
    int tmp = *x;
    *x = *y;
    *y = tmp;
}
