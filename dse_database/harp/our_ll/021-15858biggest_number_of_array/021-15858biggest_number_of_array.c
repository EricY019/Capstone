#include <stdio.h>

int sort(int arr[], int size);

int main(int argc, char *argv[])
{
   int arr[5] = { 1, 5, 7, 3, 5};
   printf("The biggest is: %d\n", sort(arr, 5));

   return 0;
}

int sort(int arr[], int size)
{
   int largestIndex = 0;
   int j;

   for (j = 1; j < size; j++)
   {
      if (arr[largestIndex] < arr[j])
      {
         largestIndex = j;
      }
   }

   return arr[largestIndex];
}
