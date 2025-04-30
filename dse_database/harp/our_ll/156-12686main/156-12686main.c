#include <stdio.h>
#include <stdlib.h>

int validate(int number)
{
    int res = 1;
    int count[5] = {0};
    while (number != 0)
    {
        int digit = number%10;
        if (digit%2 != 1)
        {
            res = 0;
            break;
        }
        else
        {
            count[(digit-1)/2]++;
        }
        number = number/10;
    }
    if (count[0]%2 == 1 || count[1]%2 == 1)
    {
        res = 0;
    }
    return res;
}

int main()
{
    int ctr;
    int have = 0;
    for (ctr = 11111111; ctr < 100000000; ctr++)
    {
        /*
        if (!((ctr%3 == 0)||(ctr%5 == 0)||(ctr%7 == 0)))
            have++;
        */
        if (validate(ctr))
            have++;
    }
    printf("Hello world! %d\n",have);
    return 0;
}
