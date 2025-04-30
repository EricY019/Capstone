#include <stdio.h>

#define LIMIT 28124
#define NELEM(x) (sizeof(x) / sizeof(x[0]))

static int abundant[LIMIT];

int check_abundant(int n)
{
    int i, sum = 0;
    for (i = 1; i < n; i++)
        if (n % i == 0)
           sum += i;
    return sum > n;
}

int not_sum_of_two(int n)
{
    int cand;
    for (cand = n-1; cand > 0; --cand)
        if (abundant[cand] && abundant[n-cand])
            return 0;
    return n;
}

int main()
{
    int i, sum = 0;

    for (i = 0; i < NELEM(abundant); i++)
        abundant[i] = check_abundant(i);

    for (i = 0; i < NELEM(abundant); i++)
        sum += not_sum_of_two(i);

    printf("%d\n", sum);
    return 0;
}

