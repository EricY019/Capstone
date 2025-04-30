// (c) 2013 Aaron M. Taylor
// This program solves problem 27 of Project Euler

#import <stdio.h>


int isPrime(int n)
{
  if (n==2) return 1;
  if (n%2==0)return 0;
  if (n<2) return 0;
  int f = 3;
  while(f*f <= n) {
    if (n%f == 0) return 0;
    f += 2;
  }
  return 1;
}


int main ( int argc, char** argv )
{
  int maxN = 0;
  int maxA = 0;
  int maxB = 0;
  for ( int a = -999; a < 1000; a++ ) {
    for (int b = -999; b < 1000; b++ ) {
      //printf("a:%d b:%d\n",b,a);
      int n;
      for ( n = 0; isPrime(n*n + a*n + b); n++) ;
      if ( n > maxN ) {
	maxN = n;
	maxA = a;
	maxB = b;
      }
    }
  } 
  printf("maxA:%d maxB:%d maxN:%d product:%d\n",maxA,maxB,maxN,maxA*maxB);
}
