#include <stdio.h>
#include <time.h>
int main ()
{
    float swatch;
    time_t sec;
    sec = time (NULL);
    /* Swatch time is based on CET (Central European Time) which is +1GMT.  NO DST bullshit either. */
    /* hence, the formula is basically epochtime in seconds + one hour in seconds */
    /* I specifically wanted "centibeats" hence the garbage with floats and 3 decimal places. */
    /* As I am a dumbshit at C, I will eventually make a commandline arg for this. */
    swatch = (float)(((sec + 3600) % 86400) * 1000) / 86400;
    printf ("@%06.3f\n", swatch);
    return 0;
}
