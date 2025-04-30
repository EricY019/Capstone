#include<stdio.h>

int main()
{
	int array[5] = {15,20,25,30,35};
	int temp;
	int i;
	int * ptr_array_start = array;
	int * ptr_array_end = array + 4;
	while(ptr_array_start != ptr_array_end)
	{
		temp = *ptr_array_start;
		*ptr_array_start = *ptr_array_end;
		*ptr_array_end = temp;
		
		ptr_array_start++;
		ptr_array_end--;
	}
	for(i = 0; i < 5; i++)
		printf("%d\t",array[i]);
	return 0;
}
