#include <stdio.h>

void ReplaceBlank(char str[], int N){
    int originalLength = 0, currentLength = 0, amountOfSpace = 0;
    char *orginalEnd, *newEnd;
    if(str == NULL && 0 == N){
        return;
    }
    while(str[originalLength]){
        if(str[originalLength++] == ' ') ++amountOfSpace;
    }
    currentLength = originalLength + 2 * amountOfSpace;
    if(currentLength > N) return;

    orginalEnd = str + originalLength;
    newEnd = str + currentLength;

    while(orginalEnd != (str - 1)){
        if(*(orginalEnd) == ' '){
            *(newEnd--) = '0';
            *(newEnd--) =  '2';
            *(newEnd--) = '%';
            --orginalEnd;
         }else{
             *(newEnd--) = *(orginalEnd--);
         }
    }


}

int main(int argc, const char *argv[])
{
    char str[100] = "Hooray! Oh My Zsh has been update and/or is at the current version.";

    ReplaceBlank(str, 100);

    puts(str);

    return 0;
}
