
#include <stdio.h>

int main(int argc, char *argv[])
{
	int src[2][2] ={{1,2},{3,4}};
	
	typedef int (*dest)[2];
	dest num =  (dest)src;

	int i,j;
	for(i = 0; i < 2; i++)
	{
		for(j = 0; j < 2; j++)
		{
			
			printf("____%d____\n",num[i][j]);
		}
	}
	return 0;
}


