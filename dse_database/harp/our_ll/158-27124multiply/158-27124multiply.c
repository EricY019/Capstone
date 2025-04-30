#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

#define DIGITS 100

int main()
{
    char n1[DIGITS+1]={};
    char n2[DIGITS+1]={};
    char m[DIGITS +2]={};
    time_t t;
    int e=0;
    int k=DIGITS;
    int r=0;
    time(&t);
    srand((unsigned int) t);
    memset(m,0x20,DIGITS+1);
    for(int i=0; i<DIGITS; i++)
    {
        n1[i]=(rand()%9)+0x30;
        n2[i]=(rand()%9)+0x30;
    }
    for(int i=DIGITS-1; i>=0; i--)
    {
        int a=n1[i]-0x30, b=n2[i]-0x30;
        int multi=a*b+r;
        e=multi % 10;
        r=multi/10;
        m[k]=e+0x30;
        --k;
        
    }
    if(r)
        m[k]=r+0x30;
    printf("%101s\n%101s\n%101s\n",n1,n2,m);
}
