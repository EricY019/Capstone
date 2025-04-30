#include <stdio.h>
void trans(char arr[34]) {
int i;
char ch;
	for (i=0 ; i<34/2 ; i++) {
		 ch=arr[i];
		arr[i]=arr[33-i];
		arr[33-i]=ch;
	}
	for (i=0 ; arr[i] != '\0' ; i++) {
		ch=arr[i];
		int number,n=13; 
		if ((arr[i]>='A') && (arr[i]<='Z')) {
			arr[i]='A';
			number=ch - 'A';	
		}else {
			number=ch - 'a';
			arr[i]='a';
		}
		number=(number+n) % 26;
		arr[i]=arr[i]+ number;
	}
printf("%s\n",arr);
}

int main () {
char mas[]="xrrJfvuGrgveJhbLqvQfznetbeClanZjbU";
trans(mas);			
return 0;
}
