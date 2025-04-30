/** Problem 4: A palindromic number reads the same both ways. 
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.


See Question @: https://projecteuler.net/problem=4
Solved by: Shengyuan Guo in 2013
**/

#include<string.h>
#include<stdio.h>
#include<stdlib.h>


int PalindromeThreeDigitProduct ();
int isPalindromeHelper(char *,int, int);

int main()
{
	printf("Largest 3 digit Palindrome is %d",PalindromeThreeDigitProduct());
}
int isPalindrome(char * str)
{


    int len= strlen(str);
    int startindex=0;
    int endindex=len-1;

    return isPalindromeHelper(str, startindex, endindex);


}

int isPalindromeHelper(char * str,int startindex, int endindex)
{

    if(str[startindex]!=str[endindex])
        return 0;
    else if(startindex>=endindex)
        return 1;
    else
    {
        isPalindromeHelper(str, startindex+1, endindex-1);
    }
}


int PalindromeThreeDigitProduct ()
{

    int startingPt=999;
    long int palindrome=0;
    char tempstr[100];
	int i,j;
    for(i=startingPt; i>=100; i--)
    {
        for(j=startingPt; j>=100; j--)
        {
            sprintf(tempstr,"%ld",i*j);

            if(isPalindrome(tempstr))
            {
                if(palindrome<i*j)
                    palindrome=i*j;
            }
        }
    }
    return palindrome;
}