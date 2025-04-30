#include <stdio.h>

int main(int argc, char *argv[]){
  int i = 20;
  int n;
  int div;
  int test = 0;
  for(n = 20; !test; n+=20){
    test = 1;
    for(div = 2; div <= 20; div++){
      if((n%div)!=0){
        test = 0;
        continue;
      }
    }
  }

  printf("%d\n", n - 20);
  return 0;
}
