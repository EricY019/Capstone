/**
 * Swap two char arrays
 */

#include <stdio.h>
#include <string.h>

void
swap_str_arr(char *str_a, char *str_b);

int
main()
{
  char s1[] = "foo";
  char s2[] = "bar bar bar";

  printf("Before swap:\n");
  printf("============\n");
  printf("s1: %s\n", s1);
  printf("s2: %s\n", s2);

  // swap
  swap_str_arr(s1, s2);

  printf("\nAfter swap:\n");
  printf("============\n");
  printf("s1: %s\n", s1);
  printf("s2: %s\n", s2);

  return 0;
}

void
swap_str_arr(char *str_a, char *str_b)
{
  int i;
  char temp;
  int len1 = strlen(str_a);
  int len2 = strlen(str_b);
  int min_len = len1 < len2 ? len1 : len2;
  int max_len = len1 > len2 ? len1 : len2;

  for (i = 0; i < min_len; i++) {
    temp = str_a[i];
    str_a[i] = str_b[i];
    str_b[i] = temp;
  }

  if (min_len == len1) {
    for (i = min_len; i < max_len; i++) {
      str_a[i] = str_b[i];
    }
    str_b[min_len] = '\0';
    str_a[max_len] = '\0';
  }
  else {
    for (i = min_len; i < max_len; i++) {
      str_b[i] = str_a[i];
    }
    str_a[min_len] = '\0';
    str_b[max_len] = '\0';
  }
}
