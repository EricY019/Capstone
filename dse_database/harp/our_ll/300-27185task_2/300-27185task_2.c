#include <stdio.h>

int main() {
	int i;
	long long unsigned x=2,y=1,z=0;
	for (i=0; i<100; i++) {
		if (i==0)
			z=2;
		else if (i==1)
			z=1;
		else {
			z=x+y;
			x=y;
			y=z;
		}
		printf("%llu, ", z);
	}
	return 0;
}
