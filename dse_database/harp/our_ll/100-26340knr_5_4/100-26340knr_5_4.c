#include <stdio.h>
#include <string.h>

#define YES 1
#define NO 0

///
/// This function returns 
///  -> YES is the string tail occurs at the end of str
///  -> NO otherwise
///
int strend(char *str, char *tail);

int main(void)
{
   int ret = 0;
   char s[] = "Je veux lui dire,", t[] = "dire,";

   if (strend(s, t) == YES)
      printf("\nThe string \n\t%s\nappears at the end of \n\t%s\n", t, s);
   else 
      printf("\nThe string \n\t%s\ndoes not appear at the end of \n\t%s\n", t, s);

   return ret; 
}

int strend(char *str, char *tail)
{
   while ((str[strlen(str)] == tail[strlen(tail)]) 
         && (strlen(tail) != 0) 
         && (strlen(str) != 0))
   {
      str--;
      tail--;
   }

   if (strlen(tail) == 0)
      return YES;
   return  NO;

}
