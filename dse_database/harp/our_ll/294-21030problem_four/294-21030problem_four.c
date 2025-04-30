#include <stdio.h>
#include <string.h>

char *strrev(char *str);

int main(void)
{
    int x;
    int y;
    int z;
    int max = 0;
    char a[7];
    char b[7];

    for(x = 999 ; x > 99 ; x--)
    {
        for(y = 999 ; y > 99 ; y--)
        {
            z = x * y;
            sprintf(a, "%d", z);
            strcpy(b, a);
            strrev(b);
            if(strcmp(a, b) == 0)
            {
                if(z > max)
                {
                    max = z;
                }
            }
        }
    }
    printf("Answer = %d\n", max);
    return 0;
}

char *strrev(char *str)
{
      char *p1, *p2;

      if (! str || ! *str)
            return str;
      for (p1 = str, p2 = str + strlen(str) - 1; p2 > p1; ++p1, --p2)
      {
            *p1 ^= *p2;
            *p2 ^= *p1;
            *p1 ^= *p2;
      }
      return str;
}