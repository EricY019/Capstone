#include <stdio.h>
int main(){
	int tenf = 10;
	int b = 10;
	while(b != 1)
	{
		b = b - 1;
		int f = tenf;
		tenf = f*b;
	}
	printf("%d\n", tenf);
	return 0;
}
