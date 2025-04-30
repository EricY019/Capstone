// (c) 2013 Aaron M. Taylor
// This program solves problem 92 of Project Euler
// It adds together the square of the digits in a number recursively until it reaches 89 or 1

#import <stdio.h>

int digitSquareSum ( int n ) {
  int new = 0;
  while ( n ) {
    new += (n%10) * (n%10); // adds square of current digit
    n /= 10;
  }
  return new;
}

int chainDest ( int n ) {
  if ( n == 1 )
    return 1;
  else if ( n == 89 )
    return 89;
  else {
    return chainDest ( digitSquareSum(n) );
  }
}

int main ( int argc, char** argv ) {
  int n89 = 0;
  for ( int i = 1; i < 10000000; i ++ )
    if ( chainDest(i) == 89 )
      n89++;
  printf("n89: %d\n",n89);
}
