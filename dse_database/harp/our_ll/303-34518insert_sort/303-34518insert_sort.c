/*
* @function insert sort algorithm 
* @author lz
* @date 2013.8.18
*/

#include <stdio.h>

void print(int a[], int n)
{
  int i = 0;
  
  if(a == NULL || n < 0)
    return;
  for(; i < n; i++)
    printf("%d ", a[i]);
}

void insert_sort(int a[], int n)
{
  int i,j,temp;
  
  for(i = 0; i < n; i++)
  {
    temp = a[i+1];
    j = i;
    
    while(j > -1 && a[j] > temp)
    {
      a[j+1] = a[j];
      j--;
    }
    a[j+1] = temp;
  }
}

int main()
{
  int a[] = {1,9,0,2,8,3,7,3,5,6,4};
  int n = sizeof(a) / sizeof(int);
  
  print(a,n);
  insert_sort(a,n);
  print(a,n);
  return 0;
}
