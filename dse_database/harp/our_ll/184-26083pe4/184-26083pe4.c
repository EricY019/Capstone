/* Project Euler
** 4
*/

#include <stdio.h>

static int palindrome = 0;

int isPalindrome (int number) {
	int temp=number, rem, reverse=0;

	while(temp!=0) {
		rem=temp%10;
		reverse=reverse*10+rem;
		temp/=10;
	}

	if (reverse == number) return 1;
	else return 0;
}

int main(int argc, char** argv) {
	int i,j;
	int current;

	for (i=100; i<1000; i++) {
		for (j=100; j<1000; j++) {
			current=i*j;
			if (isPalindrome(current) && palindrome < current) {
				palindrome = current;
				printf("The numbers are %d and %d.\n", i, j);
			}
		}
	}

	printf("%d\n", palindrome);

return 0;
}

