/* day_mon1.c -- 打印每月的天数 */
#include <stdio.h>
#define MONTHS 12

/* 使用只读数组，不向数组写入数据，可以使用关键字const进行初始化 */
const int months[MONTHS] = {31,28,31,30,31,30,31,31,30,31,30,31};

int main(int argc, char const *argv[])
{
	int days[MONTHS] = {31,28,31,30,31,30,31,31,30,31,30,31};
	int index;

	for(index = 0;index < MONTHS; index++){
		printf("Month %d has %2d days\n",index+1,days[index] );
	}

	printf("==========分割线==========\n");

	for (int i = 0; i < MONTHS; i++)
	{
		printf("Months %d has %2d days\n",i+1,months[i] );
	}
	return 0;
}
