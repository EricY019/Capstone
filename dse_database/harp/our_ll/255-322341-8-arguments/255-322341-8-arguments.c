/*!
 * 1.8 参数 - 传值调用
 */

#include <stdio.h>

int power(int x, int y)
{
    int product;

    // 用 y 次幂做循环次数的控制，而不用引入临时变量 i
    // 因为 y 传递进函数后，函数操作的是 y 的副本，并不会影响调用处实际参数的值。
    for (product = 1; y > 0; --y)
    {
        product = product * x;
    }

    return product;
}

int main()
{
    power(2, 20);

    return 0;
}
