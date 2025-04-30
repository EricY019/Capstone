/*
 * =====================================================================================
 *
 *       Filename:  memcmp.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  11/25/2016 02:30:31 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  fengbohello (), fengbohello@foxmail.com
 *   Organization:  
 *
 * =====================================================================================
 */
#include <string.h>
#include <strings.h>
#include <stdio.h>

void show_mem(const void * p, size_t n) {
    if(NULL == p) {
        return;
    }

    const char * pz = (const char *)p;
    size_t c = 0;
    printf("[");
    for(c = 0; c != n; c++) {
        printf("%02X ", pz[c]);
    }
    printf("]");
    fflush(stdout);
}

int ext_memcmp(const void * s1, const void * s2, size_t n) {
    int ret = memcmp(s1, s2, n);
    printf("compare : ");
    show_mem(s1, n);
    printf(" and ");
    show_mem(s2, n);
    printf(" => [%d]\n", ret);

    return 0;
}

int main(int argc, char * argv[]) {
    char s1[32] = {0};
    char s2[32] = {0};
    bzero(s1, sizeof(s1));
    bzero(s2, sizeof(s2));
    int i = 0;
    for(i = 0; i < 10; i++) {
        s1[i] = i;
        s2[i] = i;
    }
    for(; i < 20; i++) {
        s1[i] = i + 20;
        s2[i] = i + 50;
    }
    ext_memcmp(s1, s2, 10);
    ext_memcmp(s1, s2, 12);
    ext_memcmp(s1, s2, 16);
    ext_memcmp(s1, s2, 20);

    return 0;
}

