#include <stdio.h>
 int max(int *m, int count) {
      int largest = -99999;
      int i;
      for (i = 0; i < count; i++) {
          if (m[i] > largest) {
              largest = m[i];
          }
      }
      return largest;
 }


 int main() {
     int nums[5] = {5,9,21,17,39};
     printf("largest number is: %d", max(nums, 5));
 }

