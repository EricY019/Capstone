#include<stdio.h>

int main() {
	int a = 1;
	int i = 0;
	int b = 12414146;
	while (i < 35) {
		printf("a: %d\n", a);
		printf("b: %d\n", b & (a-1));
		a<<=1;
		i++;
	}
}
