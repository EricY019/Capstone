//看看两个都从大到小排列会出现什么！
//测试结果是，两个都从小到大排列才会得到正确的结果！
#include<stdio.h>
#define MAX 100
int main() {
	int A[MAX];
	int B[MAX];

	int An=4;
	A[0]=6;
	A[1]=4;
	A[2]=3;
	A[3]=2;
	int Bn=5;
	B[0]=2;
	B[1]=3;
	B[2]=4;
	B[3]=6;
	B[4]=9;

	int i;
	for(i=0;i<An;i++) {
		printf(" %d",A[i]);
	}
	printf("\n");
	for(i=0;i<Bn;i++) {
		printf(" %d",B[i]);
	}
	printf("\n");


	int X=8;

	i=0;
	int j=Bn-1;
	while(i<An) {
		while(A[i]+B[j]>X && j > 0) j--;
		if (A[i]+B[j]==X) printf("%d+%d=%d\n",i,j,X);
		i++;
	}

	return 0;
}
