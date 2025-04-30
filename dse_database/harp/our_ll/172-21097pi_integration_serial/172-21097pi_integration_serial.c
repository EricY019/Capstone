#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main (int argc, char *argv[])
{
  int i,num_steps;
  double x, sum, step, pi;
  clock_t t_start, t_end;
  
  num_steps=500000000;
  x=0;
  sum = 0.0;
  step = 1.0/(double) num_steps;
  t_start = clock();
  for (i=0; i < num_steps; i++)
    {
      x = (i+0.5)*step;
      sum = sum + 4.0/(1.0+x*x);
    }
  
  pi = step * sum;
  t_end = clock();
  printf("Value of pi = %g\n",pi);
  printf("Expended wall clock time = %.20f\n", (double)(t_end - t_start)/CLOCKS_PER_SEC);
  return EXIT_SUCCESS;
}
