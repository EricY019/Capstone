#include <stdio.h>

#define NUM 10

int main()
{
	int array[NUM]={10,9,8,7,6,5,4,3,2,1};
	int i,j,temp;

	for (i = 0 ; i < NUM; i++)
	{
		printf("%d\t",array[i]);
	}
	printf("\n");

	for( i = 0; i < NUM -1 ; i++)  //外层循环，
	{
		//找出最大的数，下沉到最后。
		for(j = 0 ; j < NUM - i - 1; j++)  //第一次下沉需要执行9次,第二次下沉需要执行8次。。。。
		{
		
			if(array[j] > array[j+1])
			{
				temp = array[j];
				array[j] =array[j+1];
				array[j+1] = temp;
			}
		}
	
	}

	for (i = 0 ; i < NUM; i++)
	{
		printf("%d\t",array[i]);
	}
	printf("\n");

	return 0;
}
#if 0
冒泡排序的思想：

循环第一次，将最大的数下沉到最后。
循环第二次，将次大的数下沉到倒数第二。
循环第N次， 。。。。


#endif
