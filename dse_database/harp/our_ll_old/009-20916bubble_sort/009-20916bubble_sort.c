

#include<stdio.h>

int main()
{
    int a[]={23,45,11,24,67,89,6,3,55,77};
    int size = 9;
    int pass=0,temp=0,comp=0;
    for (pass=1;pass<size;pass++)
    {
        for(comp=0;comp<size-pass;comp++)
        {
            if(a[comp] > a[comp+1])
            {
                temp=a[comp];
                a[comp]=a[comp+1];
                a[comp+1] = temp;
            }
        }
    }
    for (pass =0; pass <10;pass++)
    {
        printf("%d \n",a[pass]);
    }
    return 0;
}

