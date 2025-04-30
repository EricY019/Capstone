/*
 * =====================================================================================
 *
 *       Filename:  select-sort.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  12/23/2016 04:47:42 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>
#include <stdlib.h>

int icomp = 0;
int iswap = 0;

int cmp_fun(int a, int b) {
    icomp++;
    return a > b;
}

int swap(int * a, int * b) {
    *a = *a ^ *b;
    *b = *a ^ *b;
    *a = *a ^ *b;
    iswap ++;

    return 1;
}

int select_sort(int *pList, int len) {
    if(NULL == pList || len < 0) {
        return -1;
    }
    int i = 0;
    for(i = 0; i < len; i++) {
        int iTop = pList[i];
        int iPos = i;
        int j = 0;
        for(j = i + 1; j < len; j++) {
            if(cmp_fun(iTop, pList[j])) {
                iTop = pList[j];
                iPos = j;
            }
        }
        if(i != iPos) {
            swap(&pList[i], &pList[iPos]);
        }
    }

    return 0;
}

int get_list(int *list, int len) {
    srand(374676);
    int i = 0;
    for(i = 0; i < len; i++) {
        list[i] = rand() % (len * 20);
    }

    return 0;
}

int check_list(int *list, int len) {
    int i;
    int iCnt = 0;
    for(i = 0; i < len - 1; i++) {
        if(cmp_fun(list[i], list[i + 1])) {
            iCnt++;
        }
    }

    return iCnt;
}

void show_list(int *pList, int len) {
    int i = 0;
    for(i = 0; i < len; i++) {
        printf("%d ", pList[i]);
    }
    printf("\n");
}

int test_sort(int n) {
    icomp = 0;
    iswap = 0;
    int *pList = (int*)malloc(sizeof(int) * n);
    get_list(pList, n);
    //show_list(pList, n);
    select_sort(pList, n);
    int iThro = n * (n + 1) / 2;
    printf("n = %d, tcmp = %d, rcmp = %d, dc = %lf\n", n, iThro, icomp, (double)icomp / iThro);
    printf("n = %d, tswp = %d, rswp = %d, ds = %lf\n", n, n - 1, iswap, (double)iswap / (n - 1));
    int iT = check_list(pList, n);
    if(iT) {
        printf("sort faild, [%d]\n", iT);
    }
    //show_list(pList, n);
    free(pList);
    printf("\n");

    return 0;
}

int main() {
    int i = 0;
    for(i = 16; i <= 1024 * 16; i *= 2) {
        test_sort(i);
    }

    return 0;
}

