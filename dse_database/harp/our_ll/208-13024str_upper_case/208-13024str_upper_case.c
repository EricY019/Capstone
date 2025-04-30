/**
 * Convert all characters of the string to uppercase.
 */

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include <assert.h>

#define log printf

char *
str_upper_case(char *dest, const char *src)
{
  size_t i = 0;

  while (src[i] != '\0') {
    dest[i] = toupper(src[i]);
    ++i;
  }
  dest[i] = '\0';

  return dest;
}

int
main()
{
  char *src1 = "HellO, WoRlD";
  char src2[] = "hElLo";
  char *src3 = "";
  char *dest1, *dest2, *dest3;

  dest1 = malloc(strlen(src1) * sizeof(char) + 1);
  dest2 = malloc(strlen(src2) * sizeof(char) + 1);
  dest3 = malloc(strlen(src3) * sizeof(char) + 1);

  assert(dest1 != NULL);
  assert(dest2 != NULL);
  assert(dest3 != NULL);

  log("Before uppercase\n");
  log("================\n");

  log("src1: %s\n", src1);
  log("src2: %s\n", src2);
  log("src3: %s\n", src3);

  str_upper_case(dest1, src1);
  str_upper_case(dest2, src2);
  str_upper_case(dest3, src3);

  log("\nAfter uppercase\n");
  log("================\n");

  log("dest1: %s\n", dest1);
  log("dest2: %s\n", dest2);
  log("dest3: %s\n", dest3);

  return 0;
}
