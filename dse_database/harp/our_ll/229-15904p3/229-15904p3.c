
#include <stdlib.h>
#include <stdio.h>


int binarySearch( int target, int *arr, int leftBound, int rightBound) {
  int left = arr[leftBound] ;
  int right = arr[rightBound] ; 
  int midptIdx = (rightBound + leftBound) / 2 ;
  int midpt = arr[midptIdx] ;
  printf("\nleft: %d, right: %d, midpt: %d", leftBound, rightBound, midptIdx);
  if (left == target) {
    return leftBound ;
  }
  if (right == target) {
    return rightBound ;
  }
  if (midpt == target) {
    return midptIdx ;
  }
  if (midpt < target)  {
    return binarySearch(target, arr,  midptIdx, rightBound ) ;
  }
  return binarySearch(target, arr,  leftBound, midptIdx ) ;
  

}


int binarySearchMin(int *arr, int leftBound, int rightBound ) {
  int left = arr[leftBound] ;
  int right = arr[rightBound] ; 
  int midptIdx = (rightBound + leftBound) / 2 ;
  int midpt = arr[midptIdx] ;
  printf("\nleft: %d, right: %d, midpt: %d", leftBound, rightBound, midptIdx);
  if (((rightBound - leftBound) == 1) || (rightBound == leftBound)) {
    if (right >= left) {
      return leftBound;
    }
    return rightBound ;
  }

  if (midpt < left)  {
      return binarySearchMin(arr, leftBound, midptIdx ) ;
  }
  
  return binarySearchMin(arr, midptIdx, rightBound ) ;

}

int searchRotatedArray( int target, int *arr, int arrLen) {
  // binary search for min, then binary search for target
  int minIdx = binarySearchMin( arr, 0, arrLen -1) ;
  if ((target >= arr[0] ) && (arr[0] > arr[minIdx] ) ) {
    return binarySearch(target, arr, 0, minIdx-1);
  }
  else {
    return binarySearch(target, arr,  minIdx, arrLen-1);
  } 
}


int main() {
  int ar[10] = {5,6,7,8,9,0,1,2,3,4};
  //printf("\n %d \n", searchRotatedArray(7, ar, 10 )  );
  printf("\n %d \n", searchRotatedArray(8, ar, 10));
}
