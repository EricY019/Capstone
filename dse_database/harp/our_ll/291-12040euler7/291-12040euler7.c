//
//  euler7.c
//  Project Euler
//
//  Developed by the Byt3smith
//

#include <stdio.h>

int check_if_prime(int c, int i) {
   for ( c = 2 ; c <= i - 1 ; c++ )
      {
         if ( i%c == 0 )
            break;
      }
   return c;
}

int main() {
   int nth, i = 3, count, c;
   nth = 10001;

   printf("[*] Locating the %dst prime...\n\n", nth);

   for ( count = 2 ; count <= nth ;  )
   {
      c = check_if_prime(count, i);

      if ( c == i )
      {
         if (count == nth) {
            printf("[+] Success!\nThe %dst prime is: %d\n", count, i);
         }
	 count++;
      }
      i++;
   }

   return 0;
}
