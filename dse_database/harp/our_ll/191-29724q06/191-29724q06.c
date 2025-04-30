#include <stdio.h>

int mult(int x, int y){
  if(x == 1)
    return y;
  else
    return y + mult(x - 1, y);
}

int main(void){

  for(int i = 1; i <= 10; i++){
    for(int j = 1; j <= 10; j++){
      printf("%d x %d = %d\n", j, i, mult(i, j));
    }
    printf("\n");
  }
  return 0;
}
