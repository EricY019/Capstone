#include <stdio.h>

int main(){

	int transaction = 0;
	int i;

	for(i = 1; i < 501; i++){
		transaction += i;
	}

	printf("Transactions: %d", transaction);
	return 0;
}