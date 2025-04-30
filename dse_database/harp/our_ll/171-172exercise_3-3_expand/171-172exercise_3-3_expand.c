/*
Date: 20150731
Author: Brandon Foster

Purpose:
Write a function, `expand(s1, s2)`, that expands shorthand notations like `a-z` in the string, `s1`, into the equivalent complete list, `abcdefghijklmnopqrstuvwxyz`, in `s2`.

Allow for letters of either case and digits, and be prepared to handle cases like `a-b-c` and `a-z0-9`, and `-a-z`. 
Arrange that a leading or trailing `-` is taken literally.

*/

#include <stdio.h>
#define INDEXLENGTH 62

int expand(char originalString[], char newString[]){
	char theIndex[INDEXLENGTH];

	for(int i = 0; i < INDEXLENGTH; i++){
		if(i < 10){
			theIndex[i] = i + 48;
		}	else if (i < 36){
			theIndex[i] = i + 55; // 55 because ASCII 65 is A, minus the first 10 chars
		} else {
			theIndex[i] = i + 61; // ASCII 97 is a, minus the first 36 chars
		}
	}
	for(int i = 0; i < INDEXLENGTH; i++){
		printf("%d %c\n", i, theIndex[i]);
	}

	return 0;
}

int main(){
	
	char original[5], new[5];

	expand(original, new);

	return 0;
}
