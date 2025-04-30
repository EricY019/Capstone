#include <stdio.h>
#include <tgmath.h>

int main(int argc, char *argv[]){
  double a,b,c;
  int sum = 1000;
  for(a = 0; a < sum; a++){
    for(b = a + 1; b < sum; b++){
      for(c = b + 1; c < sum; c++){
        if(a + b + c == sum){
          if(pow(a,2) + pow(b,2) == pow(c,2)){
            printf("%.0f + %.0f + %.0f is a triplet.\n",a,b,c);
            printf("The product a*b*c is %.0f\n", a*b*c);
          }
        }
      }
    }
  }
  return 0;
}
