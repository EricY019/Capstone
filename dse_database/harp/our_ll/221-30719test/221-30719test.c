#include <stdio.h>

void itoa(int,char*,int);

int main(){
  int i = 12345;
  char str[20];
  itoa(i,str,19);
  printf("%s\n",str);
  i = -12345;
  itoa(i,str,19);
  printf("%s\n",str);
  return 0;
}

void itoa(int i,char *str,int c){
  int d = c;
  int flag = 0;
  if(i < 0){
    flag = 1;
    i *= -1;
  }
  str[c--] = '\0';
  while(i != 0){
    str[c--] = i%10 + '0';
    i /= 10;
  }
  if(flag == 1){
    str[c--] = '-';
  }
  d -= c;
  while(d--){
    str[i++] = str[i + c + 1];
  }
}
