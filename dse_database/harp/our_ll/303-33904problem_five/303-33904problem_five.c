#include <stdio.h>

int main(int argc, char *argv[])
{
  int i;
  
  for(i = 1; ; i++)
  {
    if(i % 20 == 0 && i % 19 == 0 && i % 18 == 0 && i % 17 == 0 && i % 16 == 0 && i % 15 == 0 && i % 14 == 0 && i % 13 == 0 && i % 11 == 0)
      break;
  }
  printf("The largest is %d\n", i);
  return 0;
}