#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>

#define LEN 12
#define MININT -2147483648;

void itob(int n, char s[],int base);
void reverse( char s[]);

int main(void)
{
   int ret = 0;
   int n =  -31;
   char s[LEN + 1];
   int base = 16;

   itob (n, s, base);
   reverse (s);
   printf("\n The value of the 10 base number %d in hex is %s", n, s);

   return ret;
}

void itob(int n, char s[], int base)
{
   int i = 0, sign = 0;

   sign = n;

   do
   {
      int digit = abs(n - (n/base)*base) + '0';
      if (digit > '9') 
         digit += 7;
      s[i++] = digit;
   }
   while ((n /= base));

   if (sign < 0)
      s[i++] = '-'; 
   s[i] = '\0';
}

void reverse(char s[])
{
   int c = 0;
   int i = 0;
   
   for (i = 0; i < strlen(s) / 2; i++)
   {
      c = s[i];
      s[i] = s[strlen(s) - i - 1];
      s[strlen(s) - i - 1] = c; 
   }
}


