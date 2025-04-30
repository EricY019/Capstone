//test to put some strain on the CPU 
//so that it its usage can be monitored

#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int main(void)
{
  printf("Start of test\n");

  long double a = 0;
  int i = rand();
  
  for(int c = 0; c<10000; c++)
  {
    a = i * i;
    printf("%f", a);
  }
  
  printf("End of test\n");

  return 0;

}
