#include "stdio.h"

/**

	convert a string to a integer.

*/

/* atoi: convert a string to an integer. */
int atoi(char s[]){

	int i, n;
	
	n = 0;
	for(i=0; s[i] >= '0' && s[i] <= '9'; i++){
		n = 10*n + (s[i] - '0');
	}

	return n;
}

int main(){

	int value;
	char str[] = "1234";

	value = atoi(str);

	printf("The value is %d\n", value);

	return 0;
}
