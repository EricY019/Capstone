/*
 * 作者：何伟伟
 * 作者邮箱：<1830973318@qq.com>
 * 文件名: BubbleSortOptimizing.c
 * 创建日期: 2014年12月18日 星期四 07时12分16秒
 * 程序想法： 
procedure bubbleSort( A : list of sortable items )
    n = length(A)
    repeat
       swapped = false
       for i = 1 to n-1 inclusive do
          if A[i-1] > A[i] then
             swap(A[i-1], A[i])
             swapped = true
          end if
       end for
       n = n - 1
    until not swapped
end procedure
 */
#include<stdio.h>
void swap(int *Aj, int *Aj1) {
    int originAj = (*Aj);
    *Aj = (*Aj1);
    *Aj1 = originAj;
}
void printarray(int array[], int size) {
    int i;
    for (i = 0; i < size; i++) {
	printf("%d ", array[i]);
    }
    printf("\n");
}

void bubbleSort(int A[], int n) {
    int swapped;
    do {
	swapped = 0;
	int i;
	//这里依然是每一次都从头开始比较，调换次序
	for (i = 1; i <= n - 1; i++) {
	    printarray(A, n);
	    if (A[i - 1] > A[i]) {
		swap(&A[i - 1], &A[i]);
		swapped = 1;
	    }
	    printarray(A, n);
	}
	//这里调换一次就让ｎ减一，这是一个我没有见过的处理办法！
	n = n - 1;
	printf("a round end n=%d\n", n);
    } while (swapped);
}
void test_bubbleSort() {
    int array[5] = { 4, 2, 8, 7, 1 };
    //printarray(array, 5);
    bubbleSort(array, 5);
    //printarray(array, 5);
}
void input() {
}

void solve() {
}

int main() {
    input();
    solve();
    test_bubbleSort();
    return 0;
}
