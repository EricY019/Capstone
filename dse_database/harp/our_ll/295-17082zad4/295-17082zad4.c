#include <stdio.h>
#define PETLA(komenda1, warunek, komenda2) komenda1; while(warunek){komenda2; komenda1;}
int main()
{
  int a=0, b=0, i=0;
  PETLA(a++, i<5, b++; i++);
  printf("%i\n", a);
  printf("%i\n", b);
  return 0;
}
