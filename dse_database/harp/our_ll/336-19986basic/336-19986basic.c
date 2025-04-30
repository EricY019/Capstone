#include <stdlib.h>


int main(void)
{
   
   #define N   36
   int i;
   int* a[N];

   for (i = 0; i < N; i++) {
      a[i] = malloc(400);  
   }
   for (i = 0; i < N-1; i++) {
      free(a[i]);
   }
   
   return 0;
}
