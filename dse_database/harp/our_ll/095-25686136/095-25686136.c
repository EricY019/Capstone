/* @JUDGE_ID: andrea 136 C "Dynamic Programming" */
/* @BEGIN_OF_SOURCE_CODE */
#include <stdio.h>
#include <stdlib.h>

#define TARGET_NUM	1500
#define MAX_ARRAY	1 << 30 

int main()
{
	char* 			check;
	unsigned long	i, j;
	int				count;

	check = (char*)malloc(MAX_ARRAY * sizeof(char));

	i = 1; 
	check[1] = 1;
	count = 1;

	while (count < TARGET_NUM) {
		i++;
		if (!(i%2)) 
			check[i] = check[i/2];
		else if (!(i%3)) 
			check[i] = check[i/3];
		else if (!(i%5))
			check[i] = check[i/5];
		else 
			check[i] = 0;	
		count += check[i];
	} 	

	printf("The %d'th ugly number is %d.\n",TARGET_NUM, i);

	return 0;
}
/* @END_OF_SOURCE_CODE */
