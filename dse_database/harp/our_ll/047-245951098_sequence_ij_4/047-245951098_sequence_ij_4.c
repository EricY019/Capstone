/**
https://www.urionlinejudge.com.br/judge/en/problems/view/1098
*/

#include <stdio.h>

int main(){

	int i, j;
	float iR, jR;

	for(i = 0; i <= 20; i += 2){
		for (j = 10; j <= 30; j += 10){

			iR = (float) i/10;
			jR = (float) (i+j)/10;

			if (i % 10) printf("I=%.1f J=%.1f\n", iR, jR);
			else 		printf("I=%.0f J=%.0f\n", iR, jR);
			
		}
	}

    return 0;
}