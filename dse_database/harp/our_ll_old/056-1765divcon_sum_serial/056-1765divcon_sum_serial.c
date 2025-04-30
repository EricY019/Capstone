#include <stdio.h>
#include <stdlib.h>
#include <time.h>

double sum(const double *a, size_t n)
{
  size_t half;
  // edge cases
  if (n == 0) return 0;
  if (n == 1) return *a;
    
  // recursive case
  half = n / 2;
  return sum(a, half) + sum(a + half, n - half);
}

int main (int argc, char *argv[])
{
  int N,i;
  double *list,res,kgo;
  clock_t t_start,t_end;
  
  N=100000000;
  list=malloc(N*sizeof(double));

  for(i=0;i<N;i++)
    {
      list[i] = (double) i;
    }
  t_start=clock();
  res=sum(list, N);
  t_end=clock();
  kgo=0.5* N*(N-1);
  printf("error=%g\n",res-kgo);
  printf("Took %g s\n",(double)(t_end - t_start)/CLOCKS_PER_SEC);
  free(list);

  return EXIT_SUCCESS;
}
