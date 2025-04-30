/*
 * =====================================================================================
 *
 *       Filename:  strtoul.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  12/27/2016 05:28:46 PM
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

//unsigned long int strtoul(const char *nptr, char **endptr, int base);

int main() {
    unsigned long int x = 0;
    char *p = NULL;
    const char *pList[] = 
    {
        "   10M",
        "  10m",
        "+20M",
        "+ 30M",
        "1G",
        "12 M",
        "  13 M",
        "w 10 M",
        " w 10 M",
        NULL
    };
    int i = 0;
    for(i = 0; pList[i] != NULL ; i++) {
        x = strtoul(pList[i], &p, 0);
        printf("[%s] = [%lu], p = [%s], [%s]\n", pList[i], x, p, 
                p == pList[i] ? "error" : "success");
    }

    return 0;
}

