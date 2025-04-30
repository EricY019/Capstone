#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int max(int a, int b) {
	return a > b ? a : b;
}

int min(int a, int b) {
	return a < b ? a : b;
}

char *read_instructions(FILE *in) {
	int i = 0, len = 64;
	char *ret = malloc(sizeof(char) * len);
	if (ret == NULL) {
		return NULL;
	}

	ret[0] = 0;
	int c;
	while ((c = fgetc(in)) != EOF) {
		switch (c) {
		case '^':
		case 'v':
		case '<':
		case '>':
			ret[i++] = c;
		}

		if (i == len) {
			len *= 2;
			char *tmp = realloc(ret, sizeof(char) * len);

			if (tmp == NULL) {
				free(ret);
				return NULL;
			}

			ret = tmp;
		}
	}

	ret[i] = 0;
	return ret;
}

int main(int argc, char **argv) {
	int santas = 1;
	if (argc > 1) {
		santas = max(1, atoi(argv[1]));
	}

	int *x_pos = calloc(santas, sizeof(int));
	int *y_pos = calloc(santas, sizeof(int));
	char *instructions = read_instructions(stdin);
	if (x_pos == NULL || y_pos == NULL || instructions == NULL) {
		free(x_pos);
		free(y_pos);
		free(instructions);
		return 1;
	}

	size_t inslen = strlen(instructions);
	int turn = 0;
	int x_lo = 0, x_hi = 0, y_lo = 0, y_hi = 0;
	for (size_t i = 0; i < inslen; ++i) {
		switch (instructions[i]) {
		case '^':
			y_hi = max(y_hi, ++y_pos[turn]);
			break;
		case 'v':
			y_lo = min(y_lo, --y_pos[turn]);
			break;
		case '>':
			x_hi = max(x_hi, ++x_pos[turn]);
			break;
		case '<':
			x_lo = min(x_lo, --x_pos[turn]);
			break;
		default:
			continue;
		}

		++turn;
		turn %= santas;
	}

	int x_off = abs(x_lo);
	int y_off = abs(y_lo);
	int cols = x_off + abs(x_hi) + 1;
	int rows = y_off + abs(y_hi) + 1;

	int *map = calloc((cols + 1) * (rows + 1), sizeof(int));
	if (map == NULL) {
		free(x_pos);
		free(y_pos);
		free(instructions);
		return 1;
	}

	map[y_off * cols + x_off] = 1;

	turn = 0;
	for (int i = 0; i < santas; ++i) {
		x_pos[i] = x_off;
		y_pos[i] = y_off;
	}

	int houses = 1, *loc;
	for (size_t i = 0; i < inslen; ++i) {
		switch (instructions[i]) {
		case '^':
			++y_pos[turn];
			break;
		case 'v':
			--y_pos[turn];
			break;
		case '>':
			++x_pos[turn];
			break;
		case '<':
			--x_pos[turn];
			break;
		default:
			continue;
		}

		loc = &map[y_pos[turn] * cols + x_pos[turn]];

		if (*loc == 0) {
			++houses;
		}

		++(*loc);

		++turn;
		turn %= santas;
	}

	printf("Houses visited: %d\n", houses);

	free(instructions);
	free(x_pos);
	free(y_pos);
	free(map);
	return 0;
}