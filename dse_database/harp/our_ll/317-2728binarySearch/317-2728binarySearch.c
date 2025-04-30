#include<stdio.h>
int arr[10] = {0,1,2,3,4,5,6,7,8,9};

void binarySearch(int * ar, int num, int sizeOfArray)
{
int i = 0;
int iOld = -1;
for(i= sizeOfArray/2; i< sizeOfArray && i>=0;)
{
printf("%d\n",i);
if(iOld==i)
break;
if(ar[i] == num)
{
printf("%d Found\n", num);
return;
}
else if(ar[i]>num)
{
iOld =i;
i= i-i/2-1;
}
else
{
iOld = i;
i = i+(sizeOfArray-i)/2;
}
}
printf("%d Not found\n", num);
}

int main()
{
binarySearch(arr,8,10);
binarySearch(arr,-1,10);
binarySearch(arr,10,10);
return 0;
}

