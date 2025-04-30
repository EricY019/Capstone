#include <stdio.h>
#include <stdlib.h>

int triangleNumRec (int which)
{
  if (which == 0) return 0;
  else return which + triangleNumRec(which-1);
}

int divisors(int n)
{
  int d = 0;
  for ( int i=1; i*i < n; i++ ){
    if ( n % i == 0 ) d++;
  }
  //printf("n:%4i d:%3i  ",n,d*2);
  return 2*d;
}

int main(int argc, char** argv)
{
  int i = 1;
  int n = 0;
  while ( divisors(n) < 500 ) {
    n+=i;
    i++;
  }
  printf("\nresult: %i\n",n);
}
