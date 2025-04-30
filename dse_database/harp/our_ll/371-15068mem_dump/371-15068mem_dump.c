// Copyright (c) 2012-2013 Bartosz Szczesny <bszcz@bszcz.org>
// This program is free software under the MIT license.

#include <stdio.h>
#include <stdlib.h>

int main(void) {
	const int N = 10;
	int arr[N];
	for (int i = 0; i < N; i++) {
		const int mul = 9;
		arr[i] = mul * i;
	}

	FILE* file = fopen("mem.dump", "wb");
	fwrite(arr, sizeof(int), N, file);
	fclose(file);

	for (int i = 0; i < N; i++) {
		arr[i] = 0;
	}

	file = fopen("mem.dump", "rb");
	fread(arr, sizeof(int), N, file);
	fclose(file);

	for (int i = 0; i < N; i++) {
		printf("arr[%d] = %d\n", i, arr[i]);
	}

	return 0;
}
