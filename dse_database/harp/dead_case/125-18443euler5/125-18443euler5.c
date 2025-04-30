#include <stdio.h>

int
main()
{
  int i;
  int j;
  for (i = 20; ; i += 20)
    { 
      for (j = 1; j <= 20; j++)
	{
	  if (!(i % j))
	    continue;
	  else
	    break;
	}
      if (j > 20)
	{
	  printf("answer: %d\n", i);
	  return 0;
	}
    }
  return 0;
}
