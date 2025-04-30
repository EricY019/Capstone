#include <stdio.h>
#include <time.h>

int main() {
   clock_t clock_start;
   int nrOfElements = 1000 * 1000 * 100;
   int start = 0;
   double acc = 0;
   register int i;
   clock_start = clock();
   for (i = start; i < (nrOfElements); ++i)
        acc += (i % 2 == 0 ? 4.0 : -4.0) / (2 * i + 1);
   printf("%d ms\n", (int)((clock() - clock_start) / (CLOCKS_PER_SEC / 1000)));
   printf("%.8lf\n", acc);
   return 0;
}
