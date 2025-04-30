/**
Problem 2
Write a function min_element, that given an array, returns the value of the
smallest element in the array.
@author garbagman
**/
#include <stdio.h>
#define TEST_ARRAY {1,2,3,4}
#define TEST_SIZE 4

int min_element(int * array, int array_size) {
  // CODE GOES HERE
  int min = array[0];
  int i = 1;

  for (; i < array_size; i++) {
    if (array[i] < min) {
      min = array[i];
    }
  }

  return min;
}

int main() {
  int array[4] = TEST_ARRAY;
  int min;

  min = min_element(array, TEST_SIZE);

  printf("The min value is: %d\n",min);

  return 0;
}
