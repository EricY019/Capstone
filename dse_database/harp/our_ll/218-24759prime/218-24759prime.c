#include <stdio.h>
#include <math.h>

int is_prime(int number);

int main()
{
	int start = 499;
	int needed = 75;

	int counter = 0;

	int result = 1;

	int i;

	for(i = start; counter <= needed; i++){
		result = is_prime(i);

		if(result == 0){
			printf("%d is prime\n", i);
			counter++;
		} else {
			//printf("%d: %d\n", i, result);
		}
	}

	return 0;
}

int is_prime(int number) {

	int middle = number/2;	
	int i;

	for(i = 2; i <= middle; i++){
		if((number % i) == 0) {
			return i;
		}
	}

	return 0;
}
