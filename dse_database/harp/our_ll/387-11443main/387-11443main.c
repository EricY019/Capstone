/*
 Berechnung von Pi als Monte-Carlo Algorithmus mit Pseudozufallszahlen
 Florian Macherey
 IT-Systeme, SoSe 2015
 
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

int main(void) {
    double pi;
    unsigned long i,j,k;
    unsigned long n[] = {100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};
    double x = 0.0;
    double y = 0.0;
    srand(time(0));
    clock_t begin, end;
    double time_spent;

    for(j=0; j<sizeof(n)/sizeof(n[0]); ++j) {
        i=0;
        begin = clock();
        for (k=0; k<n[j]; ++k) {
            x = ((double)rand()+1) / (double)RAND_MAX;
            y = ((double)rand()+1) / (double)RAND_MAX;
            if ((x*x + y*y) <= 1.0) {
                ++i;
            }
            
        }
        pi = i/((double)n[j]) * 4;
        
        end = clock();
        time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
        printf("Iterationen %10ld Werte: Pi: %f, berechneter Wert: %f, Differenz: %e, Laufzeit: %2.8f\n", n[j], M_PI, pi, fabs(M_PI-pi), time_spent);
    }

    return 0;
}
