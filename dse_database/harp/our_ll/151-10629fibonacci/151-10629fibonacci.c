#include <stdio.h>

int main()
{
	int n_2 = 1;
	int n_1 = 2;
	int cur;

	int sum = 2;
		
	for (cur = 3; cur <= 4000000; cur = n_2 + n_1){
		if (cur % 2 == 0)
			sum += cur;
		n_2 = n_1;
		n_1 = cur;
	}
	printf("%d\n", sum);

}
