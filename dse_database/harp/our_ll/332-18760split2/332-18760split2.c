
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int strsplit (const char *str, char *parts[], const char *delimiter) 
{
  char *pch;
  int i = 0;
  char *tmp = strdup(str);
  pch = strtok(tmp, delimiter);

  parts[i++] = strdup(pch);

  while (pch) 
  {
    pch = strtok(NULL, delimiter);
    if (NULL == pch) break;
    parts[i++] = strdup(pch);
  }

  free(tmp);
  free(pch);
  return i;
}

int main (void) 
{
  char str[] = "0 1 2 3 4 5 6 7 8 9";
  char **parts = calloc(10, sizeof(char *));
  size_t size = strsplit(str, parts, " ");
  int i = 0;

  for (; i < (int) size; ++i) 
  {
    printf("%d\n", atoi(parts[i]));
  }

  return 0;
}