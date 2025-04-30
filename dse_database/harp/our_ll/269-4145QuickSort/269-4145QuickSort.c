#include <stdio.h>

void swap(double array[], int i, int j) {
  double tmp=array[i];
  array[i]=array[j];
  array[j]=tmp;
}

int partitioning(double array[], int left, int right) {
  int positionOfPivot = left, j;
  for (j = left+1; j <= right; j++) {
	if (array[j] < array[left]) {
	  positionOfPivot++;
	  swap(array, positionOfPivot, j);
	}
  }
  swap(array, positionOfPivot, left);
  return positionOfPivot;
}

void quick_sort(double array[], int left, int right) {
  if (left < right) {
	int positionOfPivot = partitioning(array, left, right);
	quick_sort(array, left, positionOfPivot - 1);
	quick_sort(array, positionOfPivot + 1, right);
  }
}

int main(){
  /*Test*/
  int i=0;
  double array[10] = {1,5,7,2,9,3,6,8,0,4};
  
  /*We call our sort algorithm*/
  quick_sort(array,0,9);
  
  /*Writing a sorted array*/
  for(i=0; i<10; i++)
    printf("%d ", array[i]);
  printf("\n");
  
  return 0;
}
