#include<stdio.h>
int main() {
	//这里我先找出给定整数的因数
	int i;
	int n=38;
	for(i=1;i<=n;i++) {
		if (n % i == 0) {
			printf(" %d",i);
		}
	}
	printf("\n");
	return 0;
}
