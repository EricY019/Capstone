#include<stdio.h>

int main()
{
    int unsigned long firstNumber = 2;
    int unsigned long  secondNumber = 1;
    int unsigned long thirdNumber;
    int i = 1;
    printf("%lu, %lu, ", firstNumber, secondNumber);
    for(i=1; i<=97; i++)
    {
        thirdNumber = firstNumber + secondNumber;
        printf("%lu, ",thirdNumber);
        firstNumber = secondNumber;
        secondNumber = thirdNumber;
    }
    thirdNumber = firstNumber + secondNumber;
    printf("%lu\n",thirdNumber);
    return 0;
}

