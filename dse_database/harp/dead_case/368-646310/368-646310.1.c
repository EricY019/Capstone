#include <stdio.h>
int main(int argc, char *argv[]){
  int mark[2000000];
  //int list[2000000];
  int i,j;
  double sum = 0;
  for(i = 1; i < 1999999; i++){
    //list[i-1] = i;
    mark[i-1] = 0;
  }

  for(i = 2; i < 2000000; i++){
    if(mark[i] == 0){
      sum += i;
      for(j = i; j < 2000000; j+=i){
        mark[j] = 1;
      }
    }
  }
  printf("%.0f\n", sum);


}
