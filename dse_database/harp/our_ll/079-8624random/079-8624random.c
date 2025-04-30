#include "stdio.h"

int main() {
	int i = 0;
	for (i = 0; i < 1000000 ; ++i) {
		printf("Number = %d\n", (((i / 47) % 3) + 1));
	}
}