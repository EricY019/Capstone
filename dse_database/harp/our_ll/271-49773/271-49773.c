#include <stdio.h>

int gcd(int a, int b)
{
	while (b != 0) {
		int tmp = a;
		a = b;
		b = tmp % b;
	}
	return a;
}

int main()
{
	int count = 0;
	for (int d = 2; d <= 12000; d++) {
		for (int n = d / 3 + 1; n < (d % 2 == 0 ? d / 2 : d / 2 + 1); n++) {
			if (gcd(d, n) == 1) {
				count++;
			}
		}
	}
	printf("%d\n", count);
}
