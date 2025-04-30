#include <stdio.h>

int dlugosc(char tab1[]) {
    int i = 0;
    while (*tab1++!='\0') i++;
    /*while (tab1[i]!=0) {
        printf("tab[%d] = %c\n", i, tab1[i]);
        i++;
    }*/
    i--;
    return i;
}

int main(void) {
    char s[100] = "Ala ma kota";
    char d[100] = "Wlazl kotek na plotek";
    printf("Dlugosc ciagu s(%s) = %d\n", s, dlugosc(s));
    printf("Dlugosc ciagu d(%s) = %d\n", d, dlugosc(d));
    return 0;
}
