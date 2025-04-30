/* Project Euler
** 23
** Non-abundant sums
** Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
** Any numbers greater than 28,123 have been proven to be the sum of 2 abundants.
*/

#include <stdio.h>
#define UPPER 28125

unsigned long long euler = 0;
int abundantArray[UPPER] = {0};
int arrayMarked[UPPER] = {0};

int abundant(int a);
unsigned long sumDivisors(int number);
int noSum(int number);

int abundant(int a)
{
	int flag;
	int temp;

	temp = sumDivisors(a);
	if(temp > a) {
		flag = 1; // abundant
	} else {
		flag = 0; // not abundant
	}

	return flag;
}


unsigned long sumDivisors(int number)
{
	int i = 1;
	unsigned long sum = 0;

	for(i = 1; i <= number/2; i++) {
		if(number % i == 0) {
			sum+=i;
		}
	}
	return sum;
}

/*
int noSum(int number)
{
	int i,j;


	for(i = 0; i < UPPER; i++) {
		// printf("Checking %d against %d...\n", abundantArray[i], number);
		if(abundantArray[i] > number || abundantArray[i] == 0) break; // end of array, quit both loops
		for(j = 0; j < UPPER; j++) {
			if(((abundantArray[j]+abundantArray[i]) > number) || abundantArray[j] == 0) break; // end of array
			else {
				if(abundantArray[i] + abundantArray[j] == number) {
					return 0;
				}
			}
		}
	}
	printf("%d is not a sum of two abundants!\n", number);
	return number;
}
*/


int main(int argc, char** argv)
{
	int i, j, temp;
	int counter = 0;

	// get array of all abundant values
	for(i = 0; i < UPPER; i++) {
		if(abundant(i)) {
			abundantArray[counter] = i;
			counter++;
		}
	}

	// mark all numbers that CAN be summed by two abundants
	for(i = 0; i < UPPER; i++) {
		if(abundantArray[i] == 0) break;
		for(j = 0; j < UPPER; j++) {
			if(abundantArray[j] == 0) break;
			else if(abundantArray[i] + abundantArray[j] <= UPPER) {
				temp = abundantArray[i] + abundantArray[j];
				arrayMarked[temp] = 1;
			}
			else {
				break;
			}
		}
	}

	// find numbers that aren't sum of two abundants
	for(i = 4; i < UPPER; i++) {
		if(arrayMarked[i] == 0) {
			euler+=i;
		}
	}

	euler+= 1 + 2 + 3; // these aren't sum of two abundants

	printf("euler = %llu\n", euler);

	return 0;
}
