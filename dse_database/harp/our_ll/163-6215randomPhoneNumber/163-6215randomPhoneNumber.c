#include<stdio.h>
#include<stdlib.h>
#include<time.h>
int main()
{
    long long billion = 1000000000;
    long max = 3000;
    int header[]={13,15,18};
    printf("姓名,手机\n");
    long num = 0;
    srandom(time(NULL));
    for (int i = 0; i<3; i++)
    {
        while (num < max)
        {
            long a = random();
            if (a >= billion)
                a %= billion;
            long long number = header[i]*billion + a;
            printf("\"%lld\",\"%lld\"\n",number,number);
            num++;
        }
        num = 0;
    }
    return 0;
}
