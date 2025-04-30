/* 调用次数 */
#include <stdio.h>

void put_count()
{
  static int times;

  printf("put_count: 第%d次\n", ++times);
}

int main(void)
{
  for (int i = 0; i < 10; i++) {
    put_count();
  }

  return 0;
}
