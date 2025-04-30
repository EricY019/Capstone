#include <stdio.h>
#include <inttypes.h>

static uint64_t next_code(uint64_t prev_code) {
	return (prev_code * 252533LL) % 33554393LL;
}

int main() {
	uint64_t first_code = 20151125LL;
	int row = 1;
	int col = 1;

	while (row != 2947 || col != 3029) {
		first_code = next_code(first_code);

		if (row == 1) {
			row = col + 1;
			col = 1;
		}	else {
			row--;
			col++;
		}
	}

	printf("%d %d %llu\n", row, col, first_code);
}
