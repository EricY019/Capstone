/*
 * Author: Jhonatan Casale (jhc)
 *
 * Contact : jhonatan@jhonatancasale.com
 *         : casale.jhon@gmail.com
 *         : https://github.com/jhonatancasale
 *         : https://twitter.com/jhonatancasale
 *         : http://jhonatancasale.github.io/
 *
 * Create date Wed 23 Nov 03:54:02 BRST 2016
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <time.h>

int isPrime ( int );
int sum_primes ( int, int );

int main (int argc, char **argv)
{
  srand(time(NULL));

  int j = ( rand () % 99 ) + 2;

  printf ( "[2, %d].primes => [", j );
  for ( int i = 2; i <= j; i++ )
    if ( isPrime ( i ) ) printf ( " %d,", i );

  printf ( "\b ]\n" );

  printf ( "[2, %d].sum_primes => %d\n", j, sum_primes( 2, j ) );

  return (EXIT_SUCCESS);
}

int isPrime ( int n ){
  if ( n <= 1 ) return 0;

  for ( int i = 2; i < n; i++ )
    if ( n % i == 0 ) return 0;

  return 1;
}

int sum_primes( int start, int end ){
  int sum = 0;
  for ( int i = start; i <= end; i++ )
    if ( isPrime ( i ) ) sum += i;

  return sum;
}
