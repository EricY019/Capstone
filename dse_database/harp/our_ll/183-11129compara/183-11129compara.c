#include <stdio.h>

typedef union { long double			number;
		unsigned char	b[sizeof(long double)]; } arrange;

arrange	one = { 1.9e-300 } ;
arrange two = { 1.8e400  } ;

int main()
{
   int			 x;

   for (x = sizeof(long double)-1; x > -1; x--) printf("%2.2x", one.b[x]);
   putchar(10);
   for (x = sizeof(long double)-1; x > -1; x--) printf("%2.2x", two.b[x]);
   putchar(10);
   return 0;
}
