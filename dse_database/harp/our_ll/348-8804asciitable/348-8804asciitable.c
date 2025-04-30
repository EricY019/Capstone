// Generates the ASCII table of printable characters.
#include <stdio.h>

int main(){
  const char A[]="*              THE ASCII TABLE BY JOSEF ZIEGLER              *";
  int i = -1, j = 0;
  while(j < 3) {
    while(++i < sizeof(A)-1) { // because of the '\0'
      if(j%2 == 0)
	putc('*', stdout);
      else
	putc(*(A+i), stdout);}
    putc('\n', stdout);
    j++;
    i = -1;
  }
  for(i = 33; i < 127; i++){
    printf("%.3d  ", i);
    putc(i, stdout);
    printf("  ");
    if (i % 8==0)
      putc(10, stdout);
  }
}
