#include <stdio.h>

void merge(int [], int, int [], int, int []);
void merge_sort(int [], int);

int partition(int [], int, int);
void quicksort(int [], int, int);

int main() {
	/* all sorting algorithms */

	/* selection sort */
	/* 1. traverse the array form 0th position, find the minimum, swap with 0th element
	 * 2. traverse the array form 1st position, find the minimum, swap with 1th element
	 * 3. repeat
	 *
	 * ** took 652,671ms to sort a 1,000,000 sized reverse sorted array in java.
	 * ** in-place Algorithm.
	 */


	/*int arr[9] = {5, 2, 4, 1, 8, 3, 6, 9, 7}, i, j, index_min;
	int len = sizeof(arr)/sizeof(int);

	for(i=0; i<len-1; i++) {
		index_min = i;
		
		for(j=i+1; j<len; j++) {
			if(arr[j] < arr[index_min])
				index_min = j;
		}

		arr[i] = arr[i] + arr[index_min] - (arr[index_min] = arr[i]);
 	}

 	for(i=0; i<len; i++)		//print the array
 		printf("%i ", arr[i]);*/


 	/* Bubble sort */
 	/* 1.compare each element to its right element. If the right element is smaller, swap the two.
 	 * 2.improvement : if in any traversal no swapping takes place, it means the array has been sorted and no more 
 	 *   traversals are needed.
	 * 3. repeat
	 *
	 * ** took 877,739ms to sort a 1,000,000 sized reverse sorted array in java.
 	 * ** in-place Algorithm.
 	 */ 


	/*int arr[9] = {5, 2, 4, 1, 8, 3, 6, 9, 7}, i, j;
	int len = sizeof(arr)/sizeof(int);

	for(i=0; i<len-1 ;i++) {
		int flag = 0;

		for(j=0; j<len-1-i; j++) {
			if(arr[j] > arr[j+1]) {
				arr[j] = arr[j] + arr[j+1] - (arr[j+1] = arr[j]);
				flag = 1;
			}
		}

		if(flag == 0)
			break;
	}

	for(i=0; i<len; i++)		//print the array
 		printf("%i ", arr[i]);*/


 	/* Insertion sort */
 	/* 1.mentally devide the array in two pars. initially assume the 1st element to be part of the sorted array
 	 *   and the rest of the array to be unsorted.
 	 * 2.Sunsequently take one element, starting withn the 1th and insert it in the correct position in the 
 	 *   sorted part.
 	 * ** better than selection and bubble sort in practical scenarios.
 	 * ** took 1,059,155ms to sort a 1,000,000 sized reverse sorted array in java.
 	 * ** in-place Algorithm.
 	 */


 	/*int arr[9] = {5, 2, 4, 1, 8, 3, 6, 9, 7}, i, j;
	int len = sizeof(arr)/sizeof(int);

	for(i=1; i<len; i++) {
		j = i;
		
		while(j > 0  &&  arr[j] < arr[j-1]) {
			arr[j] = arr[j] + arr[j-1] - (arr[j-1] = arr[j]);
			j--;
		}
	}

	for(i=0; i<len; i++)		//print the array
 		printf("%i ", arr[i]);*/



 	/* Merge sort */
 	/* A. merging two sorted arrays into one sorted array :
	 * 1. find the smallest unpicked item form either of the sorted arrays and put in the final array.
	 * 2. repeat.
	 * 3. if one of the arrays in exhausted, put all the leftover items from the other array into final one.
	 *
	 * B. merge sort
	 * 1. split the array into two halves.
	 * 2. call merge_sort on the left array. call merge_sort on the right array.
	 * 3. if there is only one element in the array, just return.
	 * 4. call merge on the arrays.
	 *
	 * ** took 108ms to sort a 1,000,000(1M) and about 10,100ms to sort a 100,000,000(100M) sized reverse sorted array in java.
	 *    WAYYYYYYY FASTER THAN selection, bubble or insertion.
	 * ** not in-place, stable Algorithm.
 	 */



 	/*int arr[9] = {5, 2, 4, 1, 8, 3, 6, 9, 7};
	int len = sizeof(arr)/sizeof(int); 

	merge_sort(arr, len);

	for(int i=0; i<len; i++)		//print the array
 		printf("%i ", arr[i]);*/



 	/* Quicksort */
 	/* A. partition :
 	 * 1. select the rightmost element to be the pivot.
 	 * 2. swap all the elements smaller than or equal to pivot with indices 0, 1 and so on.
 	 * 3. swap pivot with the frirst element greater than the pivot.
 	 *
 	 * B. quicksort: call partition recursively to sort the array
 	 * 1. call partition on the array.
 	 * 2. call quicksort on left and right array.
 	 *
 	 * ** in the worst case i.e. in the case of a reversed sorted array 1,000,000(1M) size STACK OVERFLOW results, because
 	 *    the depth of the recursion equals the array size in worst case.
 	 * ** took anywhere between 60ms to 100ms to sort a 1,000,000(1M) and 5,800ms on average to sort a 100,000,000(100M) sized
 	 *    reverse sorted array in java that implements a RANDOMIZED version of quicksort by selecting the pivot element randomly
 	 *    like as follows:
 	 *	 
 	 *    int pivot = x[start + rand.nextInt(end-start+1)];		//in java of course
 	 * ** the RANDOMIZED quicksort is almost twice as fast as merge sort.
 	 * ** in-place, non-stable Algorithm.
 	 */



 	int arr[9] = {5, 2, 4, 1, 7, 7, 6, 9, 3};
	int len = sizeof(arr)/sizeof(int); 
	
 	quicksort(arr, 0, 8);

 	for(int i=0; i<len; i++)		//print the array
 		printf("%i ", arr[i]);



 	return 0;
}

void merge (int left[], int l, int right[], int r, int final[]) {
	int i = 0, j = 0, k = 0;

	while(i < l && j < r) {
		if(left[i] < right[j]) {
			final[k++] = left[i++];
		} else {
			final[k++] = right[j++];
		}
	}

	while(i < l) {
		final[k++] = left[i++];
	}
	while(j < r) {
		final[k++] = right[j++];
	}
}

void merge_sort(int x[], int size) {
	if(size == 1) 
		return;

	int left[size/2], right[size-size/2], i;
	register int l_size = size/2, r_size = size-size/2;

	for(i=0; i<l_size; i++)
		left[i] = x[i];
	for(i=0; i<r_size; i++)
		right[i] = x[i+l_size];

	merge_sort(left, l_size);
	merge_sort(right, r_size);

	merge(left, l_size, right, r_size, x);
}


int partition(int x[], int start, int end) {
	int pivot = x[end], swap_index = start;

	for(int i=start; i<end; i++) {
		if(x[i] <= pivot) {
			x[i] = x[i] + x[swap_index] - (x[swap_index] = x[i]);
			swap_index++;
		}
	}

	x[end] = x[end] + x[swap_index] - (x[swap_index] = x[end]);

	return swap_index;
}

void quicksort(int x[], int start, int end) {
	if(start == end)
		return;

	int p_index = partition(x, start, end);

	if(p_index != start)
		quicksort(x, start, p_index-1);
	if(p_index != end)
		quicksort(x, p_index+1, end);
}
