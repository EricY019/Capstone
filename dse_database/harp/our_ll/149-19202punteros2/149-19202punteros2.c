#include <stdio.h>

int main(int argc, char **argv) {
	int arr[5];
	int i;
	
	printf("sizeof(int): %d\n", sizeof(int));
	for(i = 0; i < 5; i++) {
		printf("%d. %p\n", i, &arr[i]);
	}
	printf("\n");
	for(i = 0; i < 5; i++) {
		printf("%d. %p\n", i, arr+i);
	}
	
	return 0;
}
