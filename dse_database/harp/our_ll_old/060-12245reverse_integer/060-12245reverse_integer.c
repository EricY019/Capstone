#include <stdio.h>


/*
 * Reverse digits of an integer.
 *
 * Example1: x = 123, return 321
 * Example2: x = -123, return -321
 */

int reverse(int x) {
    
    int val,res;
    int flag = 0; // set for negative numbers
    int max_int = 1<<31;
    
    //printf("max_int = %d\n", max_int);
    val = res = 0;
    if (x < 0) {
        
        flag = 1;
        val = -x;
    } else {
        val = x;
    }
    
    if (x == 0) {
        return 0;
    }
    
    while(val) {
        
        /* Handle overflow condition */
        if (res != 0 && max_int/res < 10 && max_int/res > -10) {
            return 0;
        }
        
        res = res * 10 + val%10;
        val = val/10;
    }
    
    if(flag) {
        return -res;
    }
    
    return res;
}


int
main()
{
    printf("Reverse and interger %d : %d\n", -12345670, reverse(-1234567));

    return 0;
}
