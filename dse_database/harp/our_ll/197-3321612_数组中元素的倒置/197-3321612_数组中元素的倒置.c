#include <stdio.h>
int main(int argc, char const *argv[]) {
  int arr[5] = {1,2,3,4,5};
  int data[5];
  for(int i = 0,j =4;i<5;i++,j--){
    data[j] = arr[i];
  }
  for(int i = 0;i<5;i++){
    printf("%d\t",data[i]);
  }
  return 0;
}
