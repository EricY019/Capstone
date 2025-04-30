#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>



int main(void)
{
	int i;
	for (i = 0; i < 1000; i ++) {
		if (i < 800)
			fprintf(stderr, "-");
		else
			fprintf(stderr, "+");
	}
	fprintf(stderr, "sortie\n"); 
	if (i < 100)
		fprintf(stderr, "jamais exécuté\n");
	return 0;
}




