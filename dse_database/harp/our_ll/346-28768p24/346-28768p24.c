/*
A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
*/

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

void set_space(char* s, int p, char c) {
  while (*s!=0 && (p>0 || *s!=' ')) {
    if (*s==' ') {
      p--;
    }
    s++;
  }

  if (*s!=0) {
    *s = c;
  }
}

void clear(char* s, char c) {
  while (*s!=0 && *s!=c) {
    s++;
  }

  if (*s==c) {
    *s = ' ';
  }
}

int main() {
  char* s;
  int i0, i1, i2, i3, i4, i5, i6, i7, i8;
  
  s = malloc(11);
  strcpy(s, "          ");
  
  for(i0=0; i0<10; i0++) {
    set_space(s, i0, '0');
    for(i1=0; i1<9; i1++) {
      set_space(s, i1, '1');
      for(i2=0; i2<8; i2++) {
        set_space(s, i2, '2');
        for(i3=0; i3<7; i3++) {
          set_space(s, i3, '3');
          for(i4=0; i4<6; i4++) {
            set_space(s, i4, '4');
            for(i5=0; i5<5; i5++) {
              set_space(s, i5, '5');
              for(i6=0; i6<4; i6++) {
                set_space(s, i6, '6');
                for(i7=0; i7<3; i7++) {
                  set_space(s, i7, '7');
                  for(i8=0; i8<2; i8++) {
                    set_space(s, i8, '8');
                    set_space(s, 0, '9');
                    printf("%s\n", s);
                    clear(s, '8');
                    clear(s, '9');
                  }
                  clear(s, '7');
                }
                clear(s, '6');
              }
              clear(s, '5');
            }
            clear(s, '4');
          }
          clear(s, '3');
        }
        clear(s, '2');
      }
      clear(s, '1');
    }
    clear(s, '0');
  }
  return 0;
}
