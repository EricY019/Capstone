#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

// An example function with memory allocation
void function_with_memory_allocation()
{
	int i = 10000;
	int* p = (int*) malloc(sizeof(int) * i);
	for(; i >= 0; --i)
		*p = i;
}


int main(void)
{
	int i;
	// Call the function 10000 times
	for(i = 0; i < 1000; ++i)
	{
		// call the function
		function_with_memory_allocation();
		
		// wait 10000 microseconds 
		usleep(10000);
	}
	return EXIT_SUCCESS;
}
