#include <stdio.h>

int palindrome (int);

int
main ()
{
  int i;
  int j;
  for (i = 999; i > 100; i--)
    {
      for (j = 999; j > 100; j--)
	{
	  if (palindrome(i * j))
	    {
	    printf ("answer: %d\n", i * j);
	    return 0;
	    }
	}
    }
  return 1;
}	  

int
palindrome (int number)
{
  if (number % 10 == number / 100000)
    {
      if ((number % 100) / 10 == (number / 10000) % 10)
	{
	  if ((number % 1000) / 100 == (number / 1000) % 100)
	    return 1;
	}
    }
  return 0;
}
