/*
 ============================================================================
 Name        : Exercise-2-6.c
 Author      : Daniel Marchena Parreira
 Email       : danielmapar@gmail.com
 Date        : 12/04/2014
 Version     : 0.1
 Copyright   : GNU General Public License Version 2
 Description : Write a function setbits(x,p,n,y) that returns x with the
               n bits that begin at position p set to the rightmost n bits
               of y, leaving the other bits unchanged.
 ============================================================================
 */

#include <stdio.h>

unsigned setbits(unsigned char x, unsigned char p, unsigned char n, unsigned char y);
void printbits(unsigned char v);

int main(void)
{
	printbits(setbits(8,2,1,2));
	return 0;
}

unsigned setbits(unsigned char x, unsigned char p, unsigned char n, unsigned char y)
{
	unsigned char left,right, substitute;

	left = x >> (9-p);
	left = left << (9-p);

	right = x << (p+n-1);
	right = right >> (p+n-1);

	substitute = y << (8-n);
	substitute = substitute >> (p-1);

	return(left | right | substitute);
}

void printbits(unsigned char v) {
  int i; // for C89 compatability
  for(i = 7; i >= 0; i--) putchar('0' + ((v >> i) & 1));
  printf("\n");
}

