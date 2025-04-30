#include <stdio.h>
#include <stdlib.h>
#define COUNT 200000
int cmpfunc(const void* p, const void* q){
	return *(int*)p - *(int*)q;
}
int main(){
	int i, a[COUNT];
	for(i=0; i<COUNT; i++) a[i] = rand();
	qsort(a, COUNT, sizeof(int), cmpfunc);
	for(i=0; i<COUNT; i++) printf("%d\n", a[i]);
	return 0;
}
