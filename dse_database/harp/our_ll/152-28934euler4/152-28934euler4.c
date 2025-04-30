// Project Euler: #4
// <byt3smith>

#include <stdio.h>
#include <math.h>

int main () {

  int x, y, z, i, bigpal, reverse=0, palcount=0;

  printf("Calculating the largest palindrome of the product of two 3-digit numbers...\n");

  for (x = 100; x<1000; x++) {
    for (y = 100; y<1000; y++) {
      z = x * y;
      i = z;

      while ( i != 0 ) {
        reverse = reverse * 10;
        reverse = reverse + i%10;
        i = i/10;
      }

      if ( reverse == z ) {
	if (z > bigpal) {
	  bigpal=z;
	}
	palcount++;
      }

      reverse=0;
    }
  }
  printf("[+] Largest palindrome: %d\n", bigpal);
  return 0;
}
