#include <stdio.h>

int is_triplet(int a, int b, int c)
{
	return  0 < a && 
		a < b && 
		b < c && 
		a*a + b*b == c*c;
}

int main(void)
{
	int a = 1, b = 2, c = 3;

	while (a + b + c != 1000 || !is_triplet(a, b, c)) {
		if (++a >= b) {
			a = 1;
			if (++b >= c) {
				b = 2;	       
				c++;
			}
		}
	}

	printf("%llu\n", a * b * c);

	return 0;
}
