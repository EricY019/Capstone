#include <stdio.h>
void printLoop(int array[],int length);
int main(int argc, char **argv)
{
	int x[] = {9,4,0,1,2,8};
	printLoop(x,6);
	return 0;
}

void printLoop(int array[], int length)
{
	int i;
	for(i=0;i<length;i++)
	{
		printf("%d\n",array[i]);
	}
}