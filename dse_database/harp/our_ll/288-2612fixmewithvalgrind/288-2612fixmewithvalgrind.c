#include<stdio.h>
#include<stdlib.h>

int main() {
	int v[10], i;
	int *v2 = malloc(sizeof(int) * 10);
	for (i = 0; i < 10; i++) {
		// recommended: v[i] = i;
		//v[i] = i;
		//printf("%d\n", v[i]);
		v2[i] = i;
		printf("%d\n", v2[i]);
	}
	free(v2);
}
