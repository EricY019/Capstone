#include <stdio.h>
#include <math.h>

int sumOfSqr(int x)
{
    int sum = 0;

    for (int i=1; i<=x; i++) {
        sum = sum + pow(i, 2);
    }

    return sum;
}

int sqrOfSum(int x)
{
    int sum = (1 + x) * x / 2;
    return pow(sum, 2);
}

int main(int argc, char const *argv[])
{
    printf("%d\n", sqrOfSum(100) - sumOfSqr(100));

    return 0;
}