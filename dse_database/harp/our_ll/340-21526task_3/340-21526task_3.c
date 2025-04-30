#include<stdio.h>

int main () {

   int num , twinPrimes[20], br, simplNum[50],i=0,a=0;
    for(num = 2; num <= 300 ; num = num +1) {
       for(br = 2; br <= num ; br= br+1) {
           if(num % br == 0) {
              break;
            }
       }
       if(br == num) {
         simplNum[i] = num;
         i = i + 1;
         if(a > 18) {
            break;
         }
         if(i > 1 && simplNum[i-1] - simplNum[i-2] == 2) {
            twinPrimes[a] = simplNum[i-2];
            twinPrimes[a+1] = simplNum[i-1];
            a = a + 2;
         }
       }
    }
    for(br = 0; br < a; br = br + 2) {
       printf("(%d, %d)\n", twinPrimes[br], twinPrimes[br+1]);
    }
    return 0;
}
