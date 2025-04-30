#include<stdio.h>

int main()
{
	int i;
	for(i=0;i<26;i++){
		char ch = 65+i;
		printf("%d : %c \n",i+1,ch);	
	}
}
