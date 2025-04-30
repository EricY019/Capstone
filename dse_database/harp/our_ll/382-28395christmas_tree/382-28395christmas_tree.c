#include <stdio.h>
void christmas_tree(int h)
 {
  int a, b, c;
  int d = 1;
  int ch = 1;
  for(a = 2; a <= h; a++)
   {
    d = d + 2;
   }
  int e = d / 2;
  for(a = 1; a <= h; a++)
   {
      for(b = 1; b <= e; b++)
        {
           printf(" ");
        }
      for(c = 1; c <= ch; c++)
        {
          printf("*");
        }
      ch = ch + 2;
      e = e -1;
      printf("\n");
   }
 }
int main()
   {
     christmas_tree(4);
     christmas_tree(7);
     christmas_tree(11);
     return 0;
   }
