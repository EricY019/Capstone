#include "stdio.h"

int main() {
	int done = 0;
	int i;
	int num = 0;

	while (!done) {
		num++;
		// We need only test divisibility by 11...20 because the numbers 0...10 are
		// factors of these numbers
		for (i = 11; i <= 20; i++) {
			if (num % i == 0) {
				done = 1;
			} else {
				done = 0;
				break;
			}
		}
	}

	printf("%d\n", num);

	return 0;
}