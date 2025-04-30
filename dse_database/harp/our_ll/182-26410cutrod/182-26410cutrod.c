#include <stdio.h>

int cut_rod(int*, int);

int
main(void)
{
	int p[] = { 0, 1, 5, 8, 9, 10, 17, 17, 20, 24, 30};
	int max;
	max = cut_rod(p, 12);
	printf("the max:%d\n", max);
	return 0;
}

#define max(a, b) (a > b ? a : b)

int cut_rod(int* p, int n)
{
	printf("my cut:%d\n", n);
	int i;
	int q = 0;
	if (n == 0)
		return 0;
	for (i = 1; i <= n; i++)
		q = max(q, p[i] + cut_rod(p, n-i));
	return q;
}
