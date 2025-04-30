#include<stdio.h>

int main()
{
   char num;
   printf("\n********************************\n");
   printf("\nTABELA ASCII\n");
   printf("\n********************************\n");
   
   for(num = 33; num <= 126; num++)
   {
      printf("\n %d \t %c", num, num);
   }
   return 0;
}