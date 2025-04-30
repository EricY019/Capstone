#include <stdio.h>
#include <string.h>
#include <limits.h>
#define MAX 100

void itoa(int n, char s[], int b);
void reverse(char s[]);                  //reverses the order of the values of the elements in a array (string)

int main()
{
    char s[MAX];
    int space;
    space=12;
    printf("%d\n",INT_MAX);
    itoa(INT_MAX, s, space);
    printf("%d\n",INT_MIN);
    itoa(INT_MIN, s, space);
    return 0;
}


void itoa(int n, char s[], int b)
{
    int i,sign;
    if (((sign=n) < 0) && (n != INT_MIN))  // if it's negative and NOT the most negative number
        n=-n;                              // make it positive
    else if (n==INT_MIN)                    // if it's the most negative number
        n=-(n)-1;                             // make it the most positive number
    i=0;
    do {                                    // loop for conversion of int to printable char
        s[i++]=n % 10 + '0';
    } while ((n /= 10) > 0);
    if (sign==INT_MIN)                      // if it was the most negative number
        s[0]=s[0]+1;                        // add one to the number
    if (sign < 0)                           //if it was negative
    {
        s[i] = '-';                       //add a minus sign
        while (i++<b)
            s[i]=' ';
    }
    else
    {
        while (i<b)
            s[i++]=' ';
    }
    s[i] = '\0';                            //and a \0 to terminate string
    reverse(s);                             //reverse the order of the string
    for (i=0; i<strlen(s); i++)             //print each char
        printf("%c",s[i]);
    if (i=strlen(s))                        //after printing each char, print nextline
        printf("\n");
}

void reverse(char s[])                  //reverses the order of the values of the elements in a array (string)
{
    int c,i,j;
    for (i=0, j=strlen(s)-1; i < j; i++, j--)
    {
        c=s[i];
        s[i]=s[j];
        s[j]=c;
    }
}
