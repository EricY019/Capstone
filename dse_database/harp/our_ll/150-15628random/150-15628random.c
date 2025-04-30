#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int a[10000000];
int main(){
	long int i,n;	
	FILE *fp;
	fp = fopen("data.in","w");
	time_t t;
	n = 1000000; // 10^6
	srand((unsigned) time(&t));
	for(i = 0; i < n; i++){
		fprintf(fp,"%d",rand() % 10);
	}
	printf("\nCount %ld",i);	
	return 0;
}
