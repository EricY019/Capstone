/*
 * =====================================================================================
 *
 *       Filename:  scandir.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  12/06/2016 10:10:51 AM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>
#include <errno.h>
#include <dirent.h>
#include <stdlib.h>
#include <string.h>

int filter(const struct dirent * d) {
    if(NULL == d) {
        return 0;
    }
    if(strstr(d -> d_name, ".c") != NULL) {
        return 1;
    }

    return 0;
}

int main(void)
{
    struct dirent **namelist;
    int n;

    n = scandir(".", &namelist, filter, alphasort);
    if (n < 0)
        perror("scandir");
    else {
        while (n--) {
            printf("%s\n", namelist[n]->d_name);
            free(namelist[n]);
        }
        free(namelist);
    }

    return 0;
}

