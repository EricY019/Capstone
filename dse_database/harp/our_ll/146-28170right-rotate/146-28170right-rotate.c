#include "stdio.h"
#include "stdlib.h"

/**

	right rotate the number.
	1111_1010	rightrot	4 = 1010_1111

*/
#define BIT_BUFFER_SIZE	64

/*  get the bit string. */
char* getbitstr(unsigned x){
	
	int cursor;
	int length;
	char *bits;

	bits = (char*)malloc(BIT_BUFFER_SIZE);	

	length = sizeof(x)*8-1;
	for(cursor=0; cursor<=length; cursor++){

		if(x & (1<<(length-cursor))){
			bits[cursor] = '1';
		}else{
			bits[cursor] = '0';
		}
	}

	bits[cursor] = '\0';

	return bits;
}

/* right rotate */
unsigned rightrot(unsigned x, int n){
	return	(~0<<n | x)<<(sizeof(x)*8-n) | (x>>n); 
}

/* do not rely on sizeof(). */
unsigned rightrot2(unsigned x, int n){
	while(n>0){
		if ((x & 1) == 1)
    	x = (x >> 1) | ~(~0U >> 1);
    else         
	 		x = (x >> 1);
   	n--;	
	}
	return x;
}


int main(){

	unsigned int a, b;
	char* p, *q, *r, *s;

	a = 0x55;
	b = 0x00;
	p = getbitstr(a);
	q = getbitstr(~0);
	r = getbitstr(b);
	s = getbitstr(rightrot(a, 3));

	printf("the bit string of ~0 is %s.\n", q);
	printf("the bit string of a is %s.\n", p);
	printf("the bit string of b is %s.\n", r);
	// test
	printf("rightrot(a, 3) is: %s.\n", s);

	free((char*)p);
	free((char*)q);
	free((char*)r);
	free((char*)s);
	p = NULL;
	q = NULL;
	r = NULL;
	s = NULL;
	return 0;
}
	
