#include <stdio.h>

#define LIMIT 1000
unsigned int CalcMM(unsigned int n)
{
    if (n < 2)
        return 1;
    return n * CalcMM(n-1);
}

void CalcNN(int n, char *pOut)
{
    if (n < 2) {
        sprintf(pOut, "%u", CalcMM(n));
        return;
    }
    unsigned int res[LIMIT] = {6};
    int i, j, len, carry;
    for (i = 4, len = 1; i <= n; ++i) {
        for (j = 0, carry = 0; j < len; ++j) {
            res[j] = res[j]*i + carry;
            carry = res[j] / 10;
            res[j] %= 10;
        }
        for (; carry; carry /= 10)
            res[len++] = carry % 10;
        if (len >= LIMIT) {
            printf("overflow!\n");
            return;
        }
    }
    i = 0;
    pOut[len] = '\0';
    while (len-- > 0)
        pOut[i++] = res[len] + '0';
}

int main(void)
{
    char buf[LIMIT];
    CalcNN(5, buf);
    puts(buf);
    CalcNN(12, buf);
    puts(buf);
    CalcNN(13, buf);
    puts(buf);
    CalcNN(20, buf);
    puts(buf);
    CalcNN(100, buf);
    puts(buf);
    return 0;
}
