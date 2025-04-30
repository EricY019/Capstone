#include <stdio.h>
#include <string.h>

int isPalindrome(int num)
{
	int len = 0;
	int isPalindrome = 1;
	int i;

	char out[512];
	sprintf( out, "%d", num ); // Write the integer to a characrer array
	
	len = strlen( out );

	for( i = 0; i < len; i++ ){
		if( out[i] != out[len - (i + 1)] ){
			isPalindrome = 0;
			break;
		}
	}

	return isPalindrome;
}

int main()
{
	int num1 = 999, num2, largest = 0, current;

	for( ; num1 >= 100; num1-- ){
		for( num2 = num1; num2 >= 100; num2-- ){
			current = num1 * num2;
			if( isPalindrome( current ) ){
				if( current > largest ){
					largest = current;
				}
			}
		}
	}

	printf( "%d\n", largest );
	
	return 0;
}
					
