#include "stdio.h"

int collatz(long int n, int length) {
	if (n == 1) {
		return ++length;
	} else if (n % 2 == 0) {
		return collatz(n / 2, ++length);
	} else {
		return collatz(3 * n + 1, ++length);
	}
}

int main() {
	long int i, resultnum = 0;
	int current, longest = 0;

	for (i = 1; i < 1000000; i++) {
		current = collatz(i, 0);
		if (current > longest) {
			longest = current;
			resultnum = i;
		}
	}

	printf("%ld\n", resultnum);

	return 0;
}