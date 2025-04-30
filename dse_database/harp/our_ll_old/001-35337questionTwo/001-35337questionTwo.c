/*
*Author: Matthew Zheng
*Purpose: Euler Q2 solution: Even fibonacci numbers
*/

#include <stdlib.h>
#include <stdio.h>

/*Function Initialization*/
void printFib(int);
void printFibSum(int);

int main(void){

   //printFib(33);
   printFibSum(32);

   system("PAUSE");
   return 0;
}

/*Function purpose: Print out the fibonnaci seq up to given number, prints if number is over or under 4 million*/
void printFib(int range){
   int fibNum1 = 1;
   int fibNum2 = 2;
   int sumNum;
   /*Hardcode the first two cases*/
   if(range <= 0){
      puts("There's nothing to show!");
   } else if (range >= 1){
      printf("%d, ", 1);
   }
   for (int i = 1; i< range; i++){
      if(i == 1){
         /*Hardcode the first two cases*/
         printf("%d, ", 2);
      } else {
         /*Assign to temp*/
         sumNum = fibNum1+fibNum2;
         printf("%d, ", sumNum);
         /*Print out cases compared to 4 million*/
         if(sumNum > 4000000){
            puts("This is over 4 mill.");
         } else if (sumNum == 4000000){
            puts("This gives you 4 mill");
         } else {
            puts("Under 4 mill");
         }
         fibNum1 = fibNum2;
         fibNum2 = sumNum;
      }
   }
}

/*Function purpose: Sums up the fibonnaci seq within certain range*/
void printFibSum(int range){
   long int sum = 0;
   int fibNum1 = 1;
   int fibNum2 = 2;
   int sumNum;
   if(range <= 0){
      /*No increment*/
   } else if (range >= 1){
      /*Do nothing because 1 is not even*/
   }
   for (int i = 1; i< range; i++){
      if(i == 1){
         /*First even number*/
         sum += 2;
      } else {
         sumNum = fibNum1+fibNum2;
         if (sumNum % 2 == 0){
            sum += sumNum;
         }
         fibNum1 = fibNum2;
         fibNum2 = sumNum;
      }
   }
   printf("Your sum is %ld\n", sum);
}
