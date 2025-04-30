#include <stdio.h>
int main () {
char c;
int i;
for (i=65;i<91;i+=1) {
c=i;
printf("%c - %d\n",c,i);
}
for (i=97;i<123;i+=1) {
c=i;
printf("%c - %d\n",c,i);
}
for (i=48;i<58;i+=1) {
c=i;
printf("%c - %d\n",c,i);
}
return 0;
}
