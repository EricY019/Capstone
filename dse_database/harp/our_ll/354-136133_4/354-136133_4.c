#include <stdio.h>
#include <limits.h>
#include <stdlib.h>
#include <string.h>

#define MAXLINE 1024

void reverse(char *s){
    int i,j,k;
    j = strlen(s) - 1;
    for (i = 0; i<j;i++){
    	k = s[i];
	s[i] = s[j];
	s[j--] = k;
    }
}
void itoa(int n, char *s){
    int i,sign;
    sign = n;
    do{
    	s[i++] = abs(n % 10) + '0'; //try 48 later
    }while( n /= 10);
    if(sign < 0){
    	s[i++] = '-';
    }
    s[i] = '\0';
    reverse(s);
}

int main(){
    char result[MAXLINE];
    itoa(INT_MIN, result);
    printf("%d\n", INT_MIN);
    printf("%s\n", result);
    return 0;
};
