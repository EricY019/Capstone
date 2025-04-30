#include <stdio.h>
#include <stdlib.h>
#include <string.h>


char* reverseString(char* s) {

        char *right, *left;
        char temp;

        if (s){
                right = s + strlen(s) - 1;
                left = s;
        }
        else{
                printf ("str = NULL\n");
        }

        while (s != right){

                temp = *right;
                *right = *left;
                *left = temp;
                left++;
                right--;

        }

        return s;
}

int main (void){


        char str[] = "Hello ABCDEF";

        char *newstr = reverseString(str);


        printf("%s ", newstr);


}
