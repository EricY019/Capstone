#include <stdio.h>

void shell_sort2(int arr[], int len);

void print(int *, int);

int main(void) {
    int arr[] = {2, 1, 8, 3, 9, 0, 4, 6, 7, 5};
    int length = 10;

    shell_sort2(arr, length);
}

void print(int *arr, int len) {
    for (int i = 0; i < len; i++) {
        printf("%2d : %2d \t", i + 1, arr[i]);
    }
    printf("\n");
}

/* cpl 书里的代码版本，比其他实现更加的简洁明了 */
void shell_sort2(int arr[], int len) {
    int gap, i, j;
    int temp;
    for (gap = len >> 1; gap > 0; gap >>= 1) {
        for (i = gap; i < len; i++) {
            for (j = i - gap; j >= 0 && arr[j] > arr[j + gap]; j -= gap) {
                temp = arr[j];
                arr[j] = arr[j + gap];
                arr[j + gap] = temp;
            }
            print(arr, len);
        }
        printf("\n");
    }
}