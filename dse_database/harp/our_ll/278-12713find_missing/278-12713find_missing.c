#include <stdio.h>

/*
 * Given an array contains N numbers of 0 .. N, find which number doesn't exist in the array.
 */

void output(int *array, size_t len)
{
	int i;
	for(i=0; i<len; i++) {
		printf("%2i,", array[i]);
	}
	puts("");

}

void swap(int *x, int *y)
{
	if( x != y) {
		*x = *x ^ *y;
		*y = *x ^ *y;
		*x = *x ^ *y;
	}
}

/* find missing number in 0...N array */
int find_missing0(int array[], size_t len)
{
	int i;

	for(i=0; i<len; i++) {
		while(array[i] != i && array[i] < len)  swap(array+i, array+array[i]);
	}

	for(i=array[0]; i<len; i++) {
		if(array[i] != i) return i;
	}

	return len;
}


/* find missing number in array */
int find_missing1(int array[], size_t len)
{

	return 0;
}

int main(int argc, char** argv)
{
	int retval = 0;
	int array[] = {2, 9, 4, 7, 5, 3, 6, 0, 8};
	size_t len = sizeof(array)/sizeof(array[0]);

	output(array, len);
	printf("missing: %d\n", find_missing0(array, len));
	output(array, len);

	return retval;
}

