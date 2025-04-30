#include <stdio.h>

#define DEBUG 1

#define UINT64_MAX 18446744073709551615ULL

void fibonacciBuzzFizz( int );
int isPrime( unsigned long long );

/*
 *  This program is a simple FizzBuzz variation which prints "Buzz", "Fizz",
 *  or "BuzzFizz" based on Fibonacci numbers.
 *
 *  The Fibonacci terms are calculated from 0. So, f(0) = 0, f(7) = 13, etc.
 *  The output will match the list found at:
 *      http://www.miniwebtool.com/list-of-fibonacci-numbers/?number=100
 *
 *  A more elaborate version of this program, which includes user input, unit
 *  tests, and Doxygen documentation, can be found at:
 *      https://github.com/mcallinder/BuzzFizz
 */
int main(int argc, char *argv[])
{
    fibonacciBuzzFizz( 100 );
    
    return 0;
}

/*
 *  The function fibonacciBuzzFizz calculates the nth Fibonacci term in a 
 *  typically iterative fashion. As it iterates, each term is checked for 
 *  primality and then for divisibility by 3 or 5. If the term is prime, 
 *  "BuzzFizz" will be printed. If the term is divisible by 3, "Buzz" will be
 *  printed. If the term is divisible by 5, "Fizz" will be printed. It should
 *  be noted that "BuzzFizz" will only print once. If a number is prime it will
 *  effectively ignore the divisibility. If none of these checks return true, 
 *  the Fibonacci term itself will be printed.
 *  
 *  Iteration was chosen over recursion since it is faster for higher numbers.
 *  Still, this function will only work for Fibonacci terms less than f(94).
 *  Larger numbers will cause overflow in the unsigned long long variable which
 *  stores them. In these cases, a message stating such will be printed.
 */
void fibonacciBuzzFizz( int n )
{
    int i;
    int prime;
    unsigned long long first = 0;
    unsigned long long second = 1;
    unsigned long long fibonacci = 0;
    
    for ( i = 0; i <= n; i++ )
    {
        if ( second > UINT64_MAX - first )
        {
            printf( "f(%d) too big for unsigned long long. Stopping.\n", i );
            return;
        }
        else
        {
            if ( i < 2 )
            {
               fibonacci = i;
            }
            else
            {
                fibonacci = first + second;
                first = second;
                second = fibonacci;
            }
            
            prime = isPrime( fibonacci );
            
#if DEBUG
            printf( "f(%d) = %llu%s : ", 
                   i, fibonacci, (prime ? ", prime" : "" ));
#endif
            
            if ( prime || fibonacci % 3 == 0)
            {
                printf( "Buzz" );
            }
            
            if ( prime || fibonacci % 5 == 0)
            {
                printf( "Fizz" );
            }
            
            if ( !prime && fibonacci % 3 && fibonacci % 5 )
            {
                printf( "%llu", fibonacci );
            }
            
            printf( "\n" );

        }
    }
}

/*
 *  The function isPrime takes advantage of the fact that all primes greater than
 *  3 follow the form 6k−1 or 6k+1, where k is a natural number. It is sufficient 
 *  only to check up to the number's square root as every composite number N has 
 *  a prime factor at most equal to sqrt(N). If no factors are detected up to this
 *  point then N itself must be prime.
 */
int isPrime( unsigned long long num ) 
{
    unsigned long i;
    
    if ( num == 2 || num == 3 )
    {
        return 1;
    }
    else if ( num <= 1 || num % 2 == 0 || num % 3 == 0 )
    {
        return 0;
    }
    else
    {
        for ( i = 5; i * i <= num; i += 6 )
        {
            if ( num % i == 0 || num % ( i + 2 ) == 0 )
            {
                return 0;
            }
        }
    }
    
    return 1;
}
