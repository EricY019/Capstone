#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void markSeen(char *str, int *hasSeen) {
  int length = strlen(str);
  for (int i=0; i<length; i++) {
    hasSeen[str[i]] += 1;
  }
}

int isAnagram(char *str1, char *str2) {
  int len1 = strlen(str1);
  int len2 = strlen(str2);

  if (len1 != len2) {
    return 0;
  } else {
    int hasSeen1[256] = {0};
    int hasSeen2[256] = {0};

    markSeen(str1, hasSeen1);
    markSeen(str2, hasSeen2);

    for (int i=0; i < len1; i++) {
      if (hasSeen1[i] != hasSeen2[i]) {
        return 0;
      }
    }

    return 1;
  }
}

int main() {
  // tests
  char str1[] = "This is a test string";
  char str2[] = "string test a is This";
  char str3[] = "Not an anagram";
  assert(isAnagram(str1, str2) == 1);
  assert(isAnagram(str1, str3) == 0);

  return 0;
}
