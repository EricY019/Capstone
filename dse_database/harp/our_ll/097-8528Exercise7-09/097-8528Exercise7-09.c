/* Functions like isupper can be implemented to save space and to save 
 * time. Explore both possibilities */

#include <stdio.h>

#define COUNT 1000000

int isupperr(char c);

int main(int argc, char *argv[])
{

    int i;
    char c = 'C';
    for (i = 0; i != COUNT; ++i) {
        //printf("C is %s\n", (isupperr(c)) ? "UPPER" : "lower");
        isupperr(c);
    }
    return 0;
}

int isupperr(char c)
{
    if (c >= 'A' && c <= 'Z') {
        return 1;
    } else {
        return 0;
    }
    
}
