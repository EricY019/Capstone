// Project Euler: #5
// <byt3smith>

#include <stdio.h>

// main function to iter over 1-10;


int findRem(int curnum)
{
        for (double i=1; i<21; i++) {
                double result = curnum / i;
                if ( result == (int)result ) {
                }
		else {
			return 0;
		}
        }
	return curnum;

}


int main()
{
	for (int i=2520; i<990000000; i++) {
		// printf("Current number: %d\n", i);
		int x = findRem(i);
		if ( x != 0 ) {
			printf("Found it! Smallest num that can be divided by 1-20 with 0 remainder is: %d\n", i);
			break;
		}
	}
}
