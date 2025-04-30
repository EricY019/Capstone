#include <stdio.h>

int main(void)
{
	for (int j = 32; j < 32+16; j++) {
		for (int i = 0; i < 160; i+=16)
		{
			if (i+j < 127)
				printf("%3d %2x %c ", i+j, i+j, i+j);
		}
		printf("\n");
	}
}
