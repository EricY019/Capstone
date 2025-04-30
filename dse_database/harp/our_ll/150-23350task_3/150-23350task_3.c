#include <stdio.h>

int main() {
	int a,b;
	a=3;
	b=5;
	printf("(%d, %d)\n" ,a,b);
	a=5;
	b=7;
	printf("(%d, %d)\n" ,a,b);
	int i=1;	
	while (i<9) {
		a=a+1;
		b=a+2;
		if ((a%2!=0)&&(a%3!=0)&&(a%5!=0)&&(a%7!=0)&&(a%9!=0)&&
    		(b%2!=0)&&(b%3!=0)&&(b%5!=0)&&(b%7!=0)&&(b%9!=0)) {
			printf("(%d, %d)\n" ,a,b);
			i++;
		}
	}
	return 0;
}
