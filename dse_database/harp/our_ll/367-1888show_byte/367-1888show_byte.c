#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, int length) 
{
	int i;
	for(i=0;i<length;i++)
		printf("%.2x", start[i]);

	printf("\n");
}

int main()
{
	int x = 128000;
	show_bytes(&x, sizeof(int));

	float y = 1.0;
	show_bytes(&y, sizeof(float));

	return 0;
}
