#include <stdio.h>
int main()
{
  float x = 1.0;
  double x1 = 1.0;
  long double x2 = 1.0;
  int l=1;

  printf("Float:\n");
  while(1.0+x>1.0)
  {
    x=x/2.0;
    printf("%i. %f >> %e\n", l, x, x);
    l++;
  }

  l=1;
  printf("Double:\n");
  while(1.0+x1>1.0)
  {
    x1=x1/2.0;
    printf("%i. %f >> %e\n", l, x1, x1);
    l++;
  }

  l=1;
  printf("Long double:\n");
  while(1.0+x2>1.0)
  {
    x2=x2/2.0;
    printf("%i. %Lf >> %Le\n", l, x2, x2);
    l++;
  }
  return 0;
}