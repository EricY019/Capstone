#include <stdio.h>

int main() {
	int sum = 2, a = 1, b = 2;
	//Every third fib is an even
	do {
		a += b;
		b += a;
		sum += (a += b);
		a = a^b;
		b = b^a;
		a = a^b;
	} while(a+b < 4000000);
	printf("Problem 2: %d\n", sum);
}
