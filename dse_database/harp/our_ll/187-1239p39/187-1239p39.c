#include <stdio.h>

int main(int argc, char* argv[]) {

	int max_p = 0;
	int max_c = 0;
	for(int p = 3; p <= 1000; p++) {
		int count = 0;
		for(int a = 1; a < p; a++) {
		for(int b = a; b < p; b++) {
			int c = p - a - b;

			if(a + b < c) continue;
			if(c <= 0) continue;

			if(c * c == a * a + b * b) {
				count++;
			}
		}
		}
		if(count > max_c) {
			max_p = p;
			max_c = count;
		}
	}

	printf("%i", max_p);

	return 0;
}
