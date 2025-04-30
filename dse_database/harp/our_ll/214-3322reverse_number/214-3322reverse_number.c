#include<stdio.h>

int ReverseNumbers(int num) 
  {
     int reverseNum = 0;
     while(num > 0) {
        reverseNum = reverseNum*10 + num % 10 ;
        num = num / 10 ;
     }
     return reverseNum;
  } 

int main () 
  {
     int OriginalNumber[5] = { 5170984, 406567, 368750, 2369510, 2183293 }, ReverseNumber, br;
     for(br = 0 ; br < 5 ; br ++ ) {
         ReverseNumber = ReverseNumbers(OriginalNumber[br]);
         if(br == 1 ) {
             printf("%6.3d       % 7.3d\n", OriginalNumber[br], ReverseNumber);
         }else{
             printf("%6.3d      % 7.3d\n", OriginalNumber[br], ReverseNumber);
         }      
    }
  return 0;
 }
