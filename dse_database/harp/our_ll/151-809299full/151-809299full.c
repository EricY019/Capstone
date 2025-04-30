//九九乘法表
//
//x代表乘数，y代表被乘数
//
//Copyright since 2016 杨昊憬，使用VIM与gcc编译器


#include<stdio.h>

int main()
{
	int x,y,sum;
	printf("________九九乘法表_______\n");
	printf("\n");
	for(x=1;x<=9;x++){
		for(y=1;y<=9;y++){
			printf("%d*%d=%d ",x,y,x*y);
		}
		printf("\n");
	}
	return 0;
}
