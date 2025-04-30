/* Write a C program using strcmp() */

#include<stdio.h>

int Strcmp1(char *s, char *t){	
	int i=0,j=0;	
	while( (s[i]!='\0') & (t[i]!='\0') ){
		j = s[i]-t[i];
		if(j!=0)
			return j;
		i++;
	}
	j = s[i]-t[i];
	return j;
}

int Strcmp2(char *s, char *t){
	for( ; *s==*t; s++,t++){
		if(*s=='\0') return 0;
	}
	return *s-*t;
}

int main(){
	char target[] = "stackf";
	char source[] = "stacked";
	printf("%d\n", Strcmp2(source,target));
	return 0;
}
