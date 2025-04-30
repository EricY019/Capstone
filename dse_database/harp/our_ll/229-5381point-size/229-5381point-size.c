/*
 * =====================================================================================
 *
 *       Filename:  point-size.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  07/26/2018 05:14:03 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>

#define xdebug(fmt, arg...) \
    do{\
        printf("%s %d : ", __func__, __LINE__); \
        printf(fmt, ##arg); \
    }while(0)

struct A {
    int a;
    char b;
    char c[128];
};

int main(int argc, char * argv[]) {
    struct A a;
    xdebug("sizeof(a) = [%ld]\n", sizeof(a));
    xdebug("sizeof(&a) = [%ld]\n", sizeof(&a));
    struct A* p = &a;
    xdebug("sizeof(p) = [%ld]\n", sizeof(p));
    xdebug("sizeof(*p) = [%ld]\n", sizeof(*p));

    return 0;
}

