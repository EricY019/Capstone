/*
 * fig06_05.c
 * Initialize an array to even integers.
 *
 * Written by Billy Wilson Arante <arantebillywilson@gmail.com>
 * Last updated on 2017/12/14 PHT
 */

#include <stdio.h>
#define SIZE 10

int main(void) {
        int arr[SIZE];
        int counter;

        for (counter = 0; counter < SIZE; counter++) {
                arr[counter] = 2 + 2 * counter;
        }

        for (counter = 0; counter < SIZE; counter++) {
                printf("%d => %d\n", counter, arr[counter]);
        }

        return 0;
}
