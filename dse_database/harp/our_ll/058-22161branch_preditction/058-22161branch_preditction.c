/**
 *	Got this piece of code out of http://stackoverflow.com/questions/11227809/why-is-processing-a-sorted-array-faster-than-an-unsorted-array?rq=1
 * It looked too interesting, so I had to re-do it myself to prove it
 *
 * In this algorightm, we'll work on two arrays, a sorted one and another one unsorted.
 * The operations we make are make faster using sorted arrays if compared with the unsorted one
 * This is due something called branch prediction, present in modern CPUs 
 * allowing common branches to be chosen by default by the processor
 */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define ARRSIZE 100000

int data[ARRSIZE], sdata[ARRSIZE];

int compare(const void * a, const void * b)
{
	return *(int *)a - *(int *)b;
}

void sorted_if()
{
	printf("Running %s: ", __func__);
	int i;
	long long sum;
	for(sum = i = 0; i < ARRSIZE; i++)
	{
		if(sdata[i] > 128)
		{
			sum += sdata[i];
		}
	}
	printf("sum = %llu, took ", sum);
}

void sorted_bitwise()
{
	printf("Running %s: ", __func__);
	int i, t;
	long long sum;
	for(sum = i = 0; i < ARRSIZE; i++)
	{
		t = (sdata[i] - 128) >> 31;
		sum += ~t & sdata[i];
	}
	printf("sum = %llu, took ", sum);
}

void sorted_ternary()
{
	printf("Running %s: ", __func__);
	int i;
	long long sum;
	for(sum = i = 0; i < ARRSIZE; i++)
	{
		sum += (sdata[i] > 192) * sdata[i];
	}
	printf("sum = %llu, took ", sum);
}

void unsorted_if()
{
	printf("Running %s: ", __func__);
	int i;
	long long sum;
	for(sum = i = 0; i < ARRSIZE; i++)
	{
		if(data[i] > 128)
		{
			sum += data[i];
		}
	}
	printf("sum = %llu, took ", sum);
}

void unsorted_bitwise()
{
	printf("Running %s: ", __func__);
	int i, t;
	long long sum;
	for(sum = i = 0; i < ARRSIZE; i++)
	{
		t = (data[i] - 128) >> 31;
		sum += ~t & data[i];
	}
	printf("sum = %llu, took ", sum);
}

void unsorted_ternary()
{
	printf("Running %s: ", __func__);
	int i;
	long long sum;
	for(sum = i = 0; i < ARRSIZE; i++)
	{
		sum += (data[i] > 192) * data[i];
	}
	printf("sum = %llu, took ", sum);
}

int main(void)
{
	void (*functions[])(void) = {sorted_if, sorted_bitwise, sorted_ternary, unsorted_if, unsorted_bitwise, unsorted_ternary};
	int i = 6, c;
	clock_t elapsed;

	// Fill data
	srand(time(NULL));
	for (c = 0; c < ARRSIZE; c++)
	{
        sdata[c] = data[c] = rand() % 256;
	}

	// Sort
	qsort(sdata, ARRSIZE, sizeof(int), compare);

	// Let the magic begin
	while(i--)
	{	
		elapsed = clock();
		functions[i]();
		printf("%.f ms\n", (double)(clock() - elapsed));
	}
}
