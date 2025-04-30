#include <stdio.h>
#include <ctype.h>

int main()
{
    char s[] = "cD1-5#Xt_Et";
    int i;

    for (i = 0; s[i] != 0; i++)
    {
        if (isalpha(s[i]))
        {
            printf("%d : %c \n", i, s[i]);
        }
    }

    return 0;

}
