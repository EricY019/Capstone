#include <stdio.h>
#include <stdlib.h>


static void barrier(void)
{
	size_t i, len = (1ul << 28);
	char *data = malloc(len);

	printf("barrier : ");
	fflush(stdout);
	
#pragma omp parallel
	{
		for (i=0; i<len/2; i++) {
			data[i] = ((char) i % 256);
			asm ("" : : : "memory");
		}
#  pragma omp barrier
		for (i=len/2; i<len; i++) {
			data[i] = ((char) i % 256);
			asm ("" : : : "memory");
		}
	}

	printf("done\n");

	free(data);
}


int main(void)
{
	barrier();

	return EXIT_SUCCESS;
}
