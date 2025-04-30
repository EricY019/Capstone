#include <stdio.h>
#include <stdlib.h>

#define N 400000000

int binsearch(int x, int v[], int n);

int main()
{
   int ret = 0;
   int x = 0;
   //int v[N];
   int *v = NULL;
   int location = 0;
   int i = 0;

   v = malloc (sizeof (int)*N);

   if (!v)
      return printf ("malloc issue\n");


   for (i  = 0; i < N; i++)
      v[i] = 2 * i + 1;

   printf("\n Finding the position of %d in the vertex: ", x);

   location = binsearch(x, v, N);

   if (location > 0)
      printf("\n\t The index of %d in v is %d\n", x, location + 1); 
   else 
      printf("\n\tThe element doesn't exist in v\n");

   free (v);

   return ret;
}
int binsearch( int x, int v[], int n)
{
   int ret = -1;
   int low = 0, high = 0, mid = 0;

   low = 0;
   high = n - 1;

   while (low < high) 
   {
      mid = (low + high) / 2; 
      if (x > v[mid])
         low = mid + 1;
      else 
         high = mid;
   }

   if(x == v[mid])
      ret = mid;

   return ret;
}
