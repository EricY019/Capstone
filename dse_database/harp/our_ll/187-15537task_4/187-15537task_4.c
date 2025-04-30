#include <stdio.h>

int main(){

	int answer = 1;
	int i;

	for(i=10;i>=1;i--)
		answer=answer*i;
	printf("%d\n", answer);
	return 0;
}