#include <stdio.h>

int main(void)
{
	 int no = 1;
	 int sum = 0;

	 do
	 {
		 sum +=no;
		 no++;
	 }while (no <= 5);

	 printf("1 到5的合计值是 %d \n", sum);
	 return (0);
}