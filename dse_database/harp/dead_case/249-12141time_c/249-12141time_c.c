/*
 * Author: Abner Castro
 * Date: August 11th, 2016
 * Description:
 *      Play around with time functions in C.
 */

#include <stdio.h>      // printf
#include <time.h>       // time_t, ctime
#include <limits.h>     // MAX_INT

static inline void days_since_beginning();
static inline void time_your_program();
static inline void when_time_t_wrap_around();
static inline void struct_tm_mktime();
static inline void format_time();


int main()
{
    // days_since_beginning();
    // time_your_program();
    // when_time_t_wrap_around();
    struct_tm_mktime();
    format_time();    
    return 0;
}

static inline void days_since_beginning()
{
    time_t seconds;
    seconds = time(NULL);
    printf("Days since January 1, 1970 = %d\n", seconds/3600/24);
}

static inline void time_your_program()
{
    clock_t start, end, elapsed;

    start = clock();
    // Loop just to stall a bit...
    for (int i = 0; i < INT_MAX; i++) {}
    end = clock();
    elapsed = end - start;
    printf("It took me %d clicks (%f seconds).\n", elapsed, ((float)elapsed)/CLOCKS_PER_SEC);

}

static inline void when_time_t_wrap_around()
{
    printf(":: When will time_t wrap around? \n\n");
    
    time_t biggest = 0x7FFFFFFF;
    printf("biggest = %s", ctime(&biggest));
    printf("biggest = %s", asctime(gmtime(&biggest)));
}

static inline void struct_tm_mktime()
{
    time_t now;
    struct tm *today;

    time(&now);
    today = localtime(&now);

    printf("The current time with asctime function: %s\n", asctime(today));
    printf("Year: %d, Month: %d\n", 1900 + today->tm_year, 1 + today->tm_mon);

    struct tm *utc_time;
    utc_time = gmtime(&now);
    printf("UTC Time: %s\n", asctime(utc_time));
}

static inline void format_time()
{
    printf("Formatting Time with strftime\n");
    time_t raw_time;
    struct tm *timeinfo;
    char buffer[200];

    time(&raw_time);
    timeinfo = localtime(&raw_time);

    strftime(buffer, 200, "Now it's %I:%M%p.", timeinfo);
    puts(buffer);

    strftime(buffer, 200, "Today it is %A, %d of %B, %Y. Day of number %j. Offset from UTC %z.", timeinfo);
    puts(buffer);
}