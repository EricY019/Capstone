#include<stdlib.h>
#include<stdio.h>

#define ENOUGH ((999 * sizeof(int) - 1) / 3 + 2)

void checkForPalindrome(int);

int largestPalindrome = 0;
int testNumber = 0;
char str[ENOUGH];
int strEnd = 5;
int strStart = 0;


int main(void){

	for(int i = 99; i < 999; i++){
		for(int a = 99; a < 999; a++){
			testNumber = a * i;
			checkForPalindrome(testNumber);
		}
	}
	printf("this is maybe the largest? %d", largestPalindrome);
}



void checkForPalindrome(int number){

	//puts the int in an array of chars 
	sprintf(str, "%d", number);
	
	if(str[strStart]==str[strEnd]){
		if(str[strStart+1]==str[strEnd-1]){

			if(str[strStart+2]==str[strEnd-2]){
				printf("palindrome: %d", number);
				if(number > largestPalindrome){
					largestPalindrome = number;
				}
			}
		}
	}
}
