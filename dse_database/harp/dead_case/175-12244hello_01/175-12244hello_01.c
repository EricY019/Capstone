#include <stdio.h>

void my_strcpy(char * dest, const char * src){
    for(int i=0;src[i];i++){
        dest[i]=src[i];
    }
}
int main(int argc, const char *argv[]){
    char buff[16];
    int a=1;
    printf("hello world,a=%d\n",a);
    my_strcpy(buff,"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
    return 0;
}
