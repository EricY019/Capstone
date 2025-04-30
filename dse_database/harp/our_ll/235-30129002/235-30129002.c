#include <stdio.h>

int main(int argc, char **argv)
{
   int sum;
   int fib_curr, fib_prev, fib_temp;
   sum = 0;
   fib_curr = 2;
   fib_prev = 1;
   fib_temp = 0;

   do
   {
      if (fib_curr % 2 == 0)
      {
         sum += fib_curr;
      }

      fib_temp = fib_curr;
      fib_curr = fib_curr + fib_prev;
      fib_prev = fib_temp;
   }
   while (fib_curr <= 4000000);

   printf("The sum is %i.\n", sum);

   return 0;
}

