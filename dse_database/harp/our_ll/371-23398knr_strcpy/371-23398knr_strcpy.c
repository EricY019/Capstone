#include <stdio.h>

/* this function copies the string source to dest */
void strcpy(char *dest, char *source);

int main(void)
{
   int ret = 0;
   char source[] = "Pouvez vous me dire quelle e la correct pronontiation?", dest[] = {};
   
   strcpy(dest, source);
   printf("\n%s\n", dest);

   return ret;
}
/*
void strcpy (char *dest, char *source)
{
   int i = 0;

   while ((dest[i] = source[i]) != '\0')
      i++;
}
*/
void strcpy (char *dest, char *source)
{
   while (*dest++ = *source++)
      ;
}
