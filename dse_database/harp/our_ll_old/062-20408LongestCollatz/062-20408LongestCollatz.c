#include <stdio.h>

// finds the starting point for the longest collatz sequence under a million

int collatzLength (int nIn)
{
  long long n = nIn;
  int l = 0;
  while ( n > 1 ) {
    //printf("%lld ",n);
    if ( n%2 == 0 )
      n = n/2;
    else
      n = 3*n+1;
    l++;
  }
  return l;
}

int collatzLengthRec ( int n, int l )
{
  if ( n <= 1 )
    return l;
  else if ( n%2 == 0 )
    return collatzLengthRec(n/2,l+1);
  else
    return collatzLengthRec(3*n+1,l+1);
}

int main (int argc, char** argv)
{
  int n = 0;
  int maxL = 0;
  for (int i = 100000; i < 1000000; i++) {
    int curL = 0;
    if (  collatzLength(i) > maxL ) {
      printf("num: %3i length:%3i\n",i,collatzLength(i));
      maxL = collatzLength(i);
      n = i;
    }
  }
  printf("longest: %i\n",n);
}
