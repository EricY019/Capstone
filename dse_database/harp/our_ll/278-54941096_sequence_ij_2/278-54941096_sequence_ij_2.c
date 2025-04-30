/**
https://www.urionlinejudge.com.br/judge/en/problems/view/1096
*/

#include <stdio.h>

int main(){

	int i, j;

	for (i = 1; i <= 9; i += 2){
		for (j = 7; j > 4; j--){
			printf("I=%d J=%d\n", i, j);
		}
	}

	return 0;
}
