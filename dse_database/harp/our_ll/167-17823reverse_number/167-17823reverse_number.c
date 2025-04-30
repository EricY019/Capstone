#include <stdio.h>
int main () {
int num1,num,mun1=0;
num1=5170984;
num=num1;
while (num1 != 0) {
	mun1=(mun1 *10) + (num1 % 10);
	num1=num1 /10;
}
printf("%d\t\t%d\n",num,mun1);
num1=406567;
num=num1;
mun1=0;
while (num1 != 0) {
	mun1=(mun1 *10) + (num1 % 10);
	num1=num1 /10;
}
printf("%d\t\t%d\n",num,mun1);
num1=368750;
num=num1;
mun1=0;
while (num1 != 0) {
	mun1=(mun1 *10) + (num1 % 10);
	num1=num1 /10;
}
printf("%d\t\t%d\n",num,mun1);
num1=2369510;
num=num1;
mun1=0;
while (num1 != 0) {
	mun1=(mun1 *10) + (num1 % 10);
	num1=num1 /10;
}
printf("%d\t\t%d\n",num,mun1);
num1=2183293;
num=num1;
mun1=0;
while (num1 != 0) {
	mun1=(mun1 *10) + (num1 % 10);
	num1=num1 /10;
}
printf("%d\t\t%d\n",num,mun1);
return 0;
}
