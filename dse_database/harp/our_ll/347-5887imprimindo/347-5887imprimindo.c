#include <stdio.h>

int main()
{
    char lt;

   
   printf("\nTabela ASCII");
   printf("\n-----------");
   printf("\nDec\tChar");
   
   for(lt=33; lt<=126; lt++)
   {
       printf("\n%d\t%c",lt,lt);
   }
   
   return 0;
}
