#include<stdio.h>
#include<stdlib.h>
#define N 8
void insert_sort(int a[], int n);
void insert_sort(int a[], int n)
{
	for (int i = 1; i < n; i++)
	{
		int j = 0;
		while ((a[j] < a[i]) && (j < i))
		{
			j++;
		}
		if (i != j) 
		{
			int temp = a[i];
			for (int k = i; k > j; k--)
			{
				a[k] = a[k - 1];
			}
			a[j] = temp;
		}
	}
}
int  main()
{
	int num[N] = { 52, 38, 11, 78, 90, 44, 16, 27 };
	insert_sort(num, N);
	for (int i = 0; i < N; i++)
		printf("%d \n ", num[i]);
	
	system("pause");
	return 0;
}