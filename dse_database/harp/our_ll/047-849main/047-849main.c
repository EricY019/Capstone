#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define DEFAULT_MAX 1000000

int main(int argc, char** argv)
{
	int i, rnd, max;
	int vals[10];
	
	printf("Init tableau.\n");
	
	for (i = 0; i < 10; ++i)
	{
		vals[i] = 0;
	}
	
	max = DEFAULT_MAX;
	
	printf("Lecture argument si present.\n");
	
	if (argc == 2)
	{
		max = atoi(argv[1]);
		printf("%d\n", max);
		if (max <= 0)
		{
			max = DEFAULT_MAX;
		}
	}
	
	srand(time(NULL));
	
	for (i = 0; i < max; ++i)
	{
		rnd = rand() % 10;
		
		printf("\r%d%%", i * 100 / max);
		fflush(stdout);
		
		vals[rnd]++;
	}
	
	printf("\r");
	
	for (i = 0; i < 10; ++i)
	{
		printf("Ecart %d => %d\n", i, vals[i] - (max / 10));
	}
	
	return EXIT_SUCCESS;
}