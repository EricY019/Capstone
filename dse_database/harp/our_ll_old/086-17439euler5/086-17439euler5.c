#include <stdlib.h>
#include <stdio.h>

int main(void){

	int foundIt = 0;
	for(int i = 20; i > 0; i++){
		int a = 20;
		while(i%a==0){
			a--;
			if(a==0){
				foundIt = 1;
				break;	
			}
		}
		if(foundIt == 1){
			printf("this is it: %d", i);
			break;
		}
	}
	return 0;
}
