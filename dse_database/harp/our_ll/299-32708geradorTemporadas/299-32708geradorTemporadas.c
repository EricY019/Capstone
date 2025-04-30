#include<stdio.h>
#include<time.h>
#include<stdlib.h>

int main (void){
	int i;
	srand(time(NULL));
	for(i = 0; i < 250; i ++){
		printf("%d", (rand() % 20) + 1);
		printf("\n");
	}
}
