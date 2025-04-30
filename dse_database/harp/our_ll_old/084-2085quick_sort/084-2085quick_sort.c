/*
 * 	Quicksort has a reputation as the fastest sort. One often contrasts quicksort with merge sort,
 *  because both sorts have an average time of O(nlog n).
 *  
 *  "On average, mergesort does fewer comparisons than quicksort, so it may be better when 
 *  complicated comparison routines are used. Mergesort also takes advantage of pre-existing order,
 *  so it would be favored for using sort() to merge several sorted arrays.
 *  On the other hand, quicksort is often faster for small arrays, and on arrays of a few distinct values,
 *  repeated many times." — http://perldoc.perl.org/sort.html
 *  Quicksort is at one end of the spectrum of divide-and-conquer algorithms, with merge sort at the opposite end.
 *  Quicksort is a conquer-then-divide algorithm, which does most of the work during the partitioning and the recursive calls.
 *  The subsequent reassembly of the sorted partitions involves trivial effort.
 *  Merge sort is a divide-then-conquer algorithm. The partioning happens in a trivial way, by splitting 
 *  the input array in half. Most of the work happens during the recursive calls and the merge phase.
 */

#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

void print_array(int *elements, int size, char *info)
{
	int iter = 0;
	printf("%s : ", info);
	for(iter = 0; iter < size; iter++) {
		printf("%d ", elements[iter]);
	}
	printf("\n");
	return;
}

void swap(int *a, int *b)
{
	int temp = *b;
	*b = *a;
	*a = temp; 
}

/* Returns the piovot element which is in the correct position */
int partion(int *elements, int low , int high)
{
	int l = low + 1;
	int h =  high;
	int pivot = low;

	while(h > l) {
		while(elements[l] <= elements[pivot]) {
			if(l == high) break;
			l++;
		}
		while(elements[h] >= elements[pivot]) {
			if(h == low) break;
			h--;
		}
		if(elements[l] >= elements[h] && l < h) {
			swap(&elements[l], &elements[h]);
		}
	}
	/* swap pivot elemet to its correct position the h*/
	if(elements[low] > elements[h])
	{
		swap(&elements[low], &elements[h]);
	}
	return h;
}

void quick_sort(int *elements, int low, int high)
{
	int pivot = 0;
	if(high < low)  return;
	pivot =  partion(elements, low, high);
	quick_sort(elements, low , pivot-1);
	quick_sort(elements, pivot+1, high);
}


int main()
{
	int test1[7] = {4, 5, 1, 8, 9, 0, 1};
	int test2[7] = {1, 1, 1, 2, 2, 0, 1};
	int test3[7] = {4, 0, -1, -8, -9, 0, 1};

	print_array(test1, 7, "Before");
	quick_sort(test1, 0, 6);
	print_array(test1, 7, "After");

	print_array(test2, 7, "Before");
	quick_sort(test2, 0, 6);
	print_array(test2, 7, "After");

	print_array(test3, 7, "Before");
	quick_sort(test3, 0, 6);
	print_array(test3, 7, "After");

	return 0;
}