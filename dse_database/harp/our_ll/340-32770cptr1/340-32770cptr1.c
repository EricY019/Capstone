#include <stdio.h>
const int MAX = 3;
int main()
{
	int var[] = {10,100,200};
	int i, *ptr[MAX];
	for ( i = 0;  i < MAX ; i++)
  {
       ptr[i] = &var[i];  /* 赋值为整数的地址 */ 
}
	for ( i = 0;  i < MAX ; i ++)
  {
	printf("存储值：var[%d] = %d \n", i, *ptr[i]);
}
  return 0;
 }
/*
让数组存储指向 int 或 char 或其他数据类型的指针。下面是一个指向整数的指针数组的声明：
int *ptr[MAX];
在这里，把 ptr 声明为一个数组，由 MAX 个整数指针组成。因此，ptr 中的每个元素，都是一个指向 int 值的指针。下面的实例用到了三个整数，它们将存储在一个指针数组中 

存储值：var[0] = 10 
存储值：var[1] = 100 
存储值：var[2] = 200 
*/
