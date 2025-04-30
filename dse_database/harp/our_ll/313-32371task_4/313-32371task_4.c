#include<stdio.h>

int main()
{
    int i = 0;
    int result = 1;
    for(i = 1;i<=10;i++)
    {
        result = result * i;
    }
    printf("%d\n",result);
    return 0;
}

