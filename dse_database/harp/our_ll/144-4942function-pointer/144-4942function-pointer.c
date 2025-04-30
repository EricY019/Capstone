#include <stdio.h>

int add(int a, int b) {
    return (a+b);
}

int subtract(int a, int b) {
    return (a-b);
}

int (*addPtr)(int, int);
int (*subtractPtr)(int, int);

int compute(int a, int b, int (*f)(int, int)) {
    int i;
    int c = 0;
    for (i = 0; i < a; i++) {
        c = (*f)(i, b);
    }
    return c;
}

int main()
{
    int a = 10;
    int b = 20;
    addPtr = add;
    subtractPtr = subtract;

    int c = compute(a, b, addPtr);
    printf("result: %i \n", c);

    return 0;
}
