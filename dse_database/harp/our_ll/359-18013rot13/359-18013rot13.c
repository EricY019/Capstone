#include <stdio.h>

//  A-M (65-77) -> N-Z (78-90)
//  a-m (97-109) -> n-z (110-122)
int rot13(int x) {

    int q = (x-1)/32;
    int r = (x-1)%32;

    if ( q != 2 && q != 3) return x;

    q = r/13;

    switch (q) {

       case 0: return x+13;
       case 1: return x-13;
       case 2: return x;
    }

}

int main (void) {


   int c;
   while ((c = fgetc(stdin)) != EOF) {

       putchar(rot13(c));
   }

   return 0;
}

