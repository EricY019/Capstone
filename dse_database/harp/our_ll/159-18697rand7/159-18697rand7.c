#include "stdio.h"
#include <time.h>
#include <stdlib.h>

int rand5(){
	return rand() % 5;
}


int rand7(){
	int sum;
	do{
		sum  = rand5() * 5 + rand5();
	}while(sum > 20);

	return sum % 7;
}

int main(int argc, char **argv){
	// Seed rand
	srand(time(NULL));

	// rand7
	int results[7] = {0};
	for(int i=0; i<1000000; i++)
		results[rand7()]++;
	
	for(int i=0; i<7; i++)
		printf("%d came up %d times\n", i, results[i]);

}