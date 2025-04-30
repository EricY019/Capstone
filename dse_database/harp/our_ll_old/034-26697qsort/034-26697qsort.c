#include <stdio.h>

// A down and dirty integer quicksort implementation.

void swap(int* a, int* b) {
	int t = *a;
	*a = *b;
	*b = t;
}

int partition(int* arr, int lo, int hi) {
	// TODO make this randomized.
	int pivot = arr[hi];
	int i     = (lo-1);

	for (int j = lo; j <= hi-1; j++) {
		if (arr[j] <= pivot) {
			i++;
			swap(&arr[i], &arr[j]);
		}
	}
	swap(&arr[i+1], &arr[hi]);
	return (i+1);
}

void qsort(int* arr, int lo, int hi) {
	if (lo < hi) {
		int wall = partition(arr, lo, hi);

		qsort(arr, lo, wall-1);
		qsort(arr, wall+1, hi);
	}
}

int main(void) {
	int n = 10;
	int test[n];
	test[0] = 9;
	test[1] = 4;
	test[2] = 1;
	test[3] = -18;
	test[4] = 3;
	test[5] = 6;
	test[6] = 7;
	test[7] = 2;
	test[8] = 0;
	test[9] = -2;

	// Print prior to qsort.
	for (int i = 0; i < n; i++) {
		printf("%d ", test[i]);
	}
	printf("\n");

	qsort(test, 0, n-1);

	// Print after qsort.
	for (int i = 0; i < n; i++) {
		printf("%d ", test[i]);
	}
	printf("\n");
}


