/***********************************************************
Brian Koser
Project Euler - 5
Find the smallest number evenly divisible by the numbers 1-20
2009.08.10.00.16
***********************************************************/

#include <stdio.h>

int main()
{
   long long int number = 0;
   _Bool success = 0;

   printf("\n\nThe program finds the smallest number evenly divisible by the numbers 1-20\n\n");

   while(!success)
   {
      number++;

      if(!(number % 1))      
        if(!(number % 2))
          if(!(number % 3))
            if(!(number % 4))
              if(!(number % 5))      
                if(!(number % 6))
                  if(!(number % 7))
                    if(!(number % 8))
                      if(!(number % 9))
                        if(!(number % 10))
                          if(!(number % 11))
                            if(!(number % 12))
                              if(!(number % 13))
                                if(!(number % 14))
                                  if(!(number % 15))
                                    if(!(number % 16))
                                      if(!(number % 17))
                                        if(!(number % 18))
                                          if(!(number % 19))
                                            if(!(number % 20))                                          
                                              success = 1;
   }

   printf("\n%lld is divisible by:", number);
   printf("\n1: %lld", number % 1);
   printf("\n2: %lld", number % 2);
   printf("\n3: %lld", number % 3);
   printf("\n4: %lld", number % 4);
   printf("\n5: %lld", number % 5);
   printf("\n6: %lld", number % 6);
   printf("\n7: %lld", number % 7);
   printf("\n8: %lld", number % 8);
   printf("\n9: %lld", number % 9);
   printf("\n10: %lld", number % 10);
   printf("\n11: %lld", number % 11);
   printf("\n12: %lld", number % 12);
   printf("\n13: %lld", number % 13);
   printf("\n14: %lld", number % 14);
   printf("\n15: %lld", number % 15);
   printf("\n16: %lld", number % 16);
   printf("\n17: %lld", number % 17);
   printf("\n18: %lld", number % 18);
   printf("\n19: %lld", number % 19);
   printf("\n20: %lld", number % 20);
   printf("\n\n");

   return 0;
}
