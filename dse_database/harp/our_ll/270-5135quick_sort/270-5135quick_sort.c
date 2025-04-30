#include <stdio.h>
#include <stdlib.h>

int Partion(int R[], int low, int high)
{
  int temp;
  temp = R[low];
  while (low < high)
  {
    while (low < high && R[high] > temp)
      high--;
    if (low < high)
    {
      R[low] = R[high];
      low++;
    }
    while (low < high && R[low] < temp)
      low++;
    if (low < high)
    {
      R[high] = R[low];
      high--;
    }
  }
  R[low] = temp;
  return low;
}

void Quick_Sort(int R[], int s, int t)
{
  int i;
  if (s < t)
  {
    i = Partion(R, s, t);
    Quick_Sort(R, s, i - 1);
    Quick_Sort(R, i + 1, t);
  }
}

int main()
{
  int array[10] = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
  Quick_Sort(array, 0, 9);
  for (int i = 0; i < 10; i++)
    printf("%d ", array[i]);
  printf("\n");
  return 0;
}
