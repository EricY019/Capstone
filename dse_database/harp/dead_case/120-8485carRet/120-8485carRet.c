#include <stdio.h>

int main(void){
	float i,max=1000000;
	
	for (i=0; i<max; i++){
		printf("\rCompletion: %.3f%%",(i/max)*100);
	}

	return 0;
}
