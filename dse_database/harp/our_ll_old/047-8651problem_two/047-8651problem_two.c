#include <stdio.h>

long int fibonacci(long int n);


int main(int argc, char *argv[])
{
  long int i;
  long int sum = 0;
  
  for(i = 0; fibonacci(i) < 4000000; i++)
  {
    printf("fibonacci(i) is: %lu\n", fibonacci(i));
    
    if( (fibonacci(i) % 2) == 0 )
      sum += fibonacci(i);
  }
  printf("The sum of the even fibonacci numbers below 4000000 is: %lu\n", sum);
  return 0;
  
}

long int fibonacci(long int n)
{
  if (n == 0)
    return 0;
  else if (n == 1)
    return 1;
  else
    return fibonacci(n-1) + fibonacci(n-2);
}