#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define error 0.00001

double f(double x)
{
  return x*x -7*x + 12;
}

double df(double x)
{
  return 2*x - 7;
}

double newton_raphson(double x0)
{
  double last, current;

  current = x0 - (f(x0) / df(x0));
  do {
    last = current;
    current -= f(current) / df(current);
  } while (fabs(last - current) > error);

  return current;
}

int main(int argc, char **argv)
{
  printf("root at %lf\n", newton_raphson(10));

  return EXIT_SUCCESS;
}
