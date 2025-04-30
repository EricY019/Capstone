#include <stdio.h>

int main(int argc, char *argv[])
{
  long int num, triangle, count, i;
  num = 1;
  while(num != 0)
  {
    triangle = num * (num + 1) / 2;
    count = 2;
    for (i = 2; i * i < triangle; i++)
    {
      if((triangle % i) == 0)
      {
	count += 2;
      }
      if(count >= 500)
      {
	printf("%ld\n", triangle);
	return 0;
      }
    }
    num++;
  }
  return 0;
}