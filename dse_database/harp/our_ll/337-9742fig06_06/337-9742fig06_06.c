/*
 * fig06_06.c
 * Computing sum of elements in an array.
 *
 * Written by Billy Wilson Arante <arantebillywilson@gmail.com>
 * Last updated on 2017/12/14 PHT
 */

#include <stdio.h>
#define SIZE 12

int main(void) {
        int arr[SIZE] = {1, 3, 5, 4, 7, 2, 99, 16, 45, 67, 89, 45};
        int counter;
        int sum = 0;

        for (counter = 0; counter < SIZE; counter++) {
                sum += arr[counter];
        }

        printf("Total is %d\n", sum);

        return 0;
}
