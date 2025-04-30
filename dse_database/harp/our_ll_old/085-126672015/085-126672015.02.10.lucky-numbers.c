// 2015.02.10 - http://www.problemotd.com/problem/lucky-numbers/
#include <stdio.h>

unsigned num_repeats(const unsigned test, const unsigned num) {
  unsigned result = num;
  while (result < test) result = (result * 10) + num;
  return test == result;
}

unsigned numlen(unsigned num) {
  unsigned result = 1;
  while (num /= 10) ++result;
  return result;
}

unsigned lucky_nums(const unsigned limit) {
  unsigned result = 0;
  for (unsigned len = 0, i = 0; i <= limit; ++i, len = numlen(i))
    if (3 == len || 7 == len || num_repeats(i, 3) || num_repeats(i, 7))
      ++result;
  return result;
}

int main(void) {
  printf("Lucky numbers: %u\n", lucky_nums(1000000));
  return 0;
}
