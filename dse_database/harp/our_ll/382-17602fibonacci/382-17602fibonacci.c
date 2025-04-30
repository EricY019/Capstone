#include <stdio.h>

int fibonacci(int n);

int main(void){
  
  for ( int n = 0 ; n < 38; n++ ) 
	printf("%d %d\n",n,fibonacci(n));

  return 0;
}

int fibonacci(int n) {
  // returns n term in natural fib sequence.
  // where n starts at 0.
  if ( 0 == n ) return 0;
  if ( 1 == n ) return 1;
return fibonacci(n-1)+fibonacci(n-2);
}
