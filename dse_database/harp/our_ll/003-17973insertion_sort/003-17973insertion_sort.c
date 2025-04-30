/*interface*/
#include<stdio.h>
void sort(int *,int);
void insertion_sort(int *,int);
void print(int *,int);
/*interface implementation*/
void sort(int *data,int length) {
    insertion_sort(data,length);
}
void insertion_sort(int *data,int length) {
	//感觉作者写的有点复杂了！
     int i;
     for (i = 0; i < length; i++) {
          int j = i;
          //在i左边的比i大的元素
	  //i=1,不会进入while循环！
          while (j > 0 && data[i] < data[j - 1])
               j--;
          int tmp = data[i];
          int k;
          //把比i大的元素都向右统一移动一位！
          for (k = i; k > j; k--)
               data[k] = data[k - 1];
          //把i放在比他大的最左边的那个元素的位置上！
          data[j] = tmp;
     }
}
void print(int *data,int length) {
    int i;
    for(i=0; i<length; i++) {
        printf(" %d",data[i]);
    }
    printf("\n");
}
/*client*/
int main() {
    int data[5]= {2,3,1,8,5};
    int length=5;
    print(data,length);
    sort(data,length);
    print(data,length);
    return 0;
}
