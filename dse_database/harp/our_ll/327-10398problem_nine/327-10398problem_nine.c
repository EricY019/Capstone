#include <stdio.h>
#include <math.h>

int main(int argc, char *argv[])
{
  unsigned int i, j, k;
  i = 1;
  
  while (i < 1000)
  {
    j = 1;
    while (j < 1000 - i)
    {
      k = 1000 - i - j;
      if (i * i + j * j == k * k)
      {
	printf("The product is %d\n", i*j*k);
	return 0;
      }
      j++;
    }
    i++;
  }
  return 0;
}