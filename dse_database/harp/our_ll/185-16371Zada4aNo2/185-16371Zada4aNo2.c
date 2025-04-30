#include <stdio.h>

  int main()
    {
      long long unsigned int x,y,z;
    x=2;
        printf("%i, " ,x);
    y=1;
        printf("%i, " ,y);
    z=0;
      while(z<98){
    x=y+x;
    y=x+y;
        printf("%llu, " ,x);
        printf("%llu, " ,y);
    z++;
    }
return 0;
}   
