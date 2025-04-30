#include <stdio.h>
#include <stdlib.h>
char* split(char* a,int len,int deviation){
	char *t;
	t=(char *)malloc(sizeof(char)*len);
	int i;
    a+=deviation;
	for(i=0;i<len;i++) t[i]=a[i];
	return t;
}

int main()
{
	/* code */

	char s[20]="1234567890123456789";
	char *aa;

	int i;
	for(i=0;i<4;i++){
	aa=split(s,4,4*i);
    printf("%s\n",aa);
}
	return 0;
}
