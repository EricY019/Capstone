/*
 * =====================================================================================
 *
 *       Filename:  atoi.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  12/21/2016 11:40:32 AM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>
#include <stdlib.h>

/* int atoi(const char *nptr); */

int main() {
    const char *pNum[] = 
    {
        "-10",
        "0",
        "10",
        "a100",
        "100a",
        "-100a",
        " 12x",
        NULL
    };
    int i = 0;
    for(i = 0; pNum[i] != NULL; i++) {
        printf("[%-s] \t= [%d]\n", pNum[i], atoi(pNum[i]));
    }

    return 0;
}

