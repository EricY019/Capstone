#include "stdio.h"

/**

	count the 1-bit in a unsigned.

*/

int bitcount(unsigned x){

	int counter;

	for(counter=0; x != 0; x &= (x-1)){
		counter++;
	}

	return counter;
}

int main(){


	int i;
	unsigned int a;

	a = ~0;
	
	for(i=0; i<10000L; i++){
		bitcount(a);
	}
	printf("the 1-bit in the a is: %d.\n", bitcount(a));

	return 0;

}	
