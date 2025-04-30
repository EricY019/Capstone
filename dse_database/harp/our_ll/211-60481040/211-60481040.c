#include <stdio.h>
#define MAX 10000
int str[10000]={
2,3,5,/* .....*/
};
int isPirme(int k){
	int i;
	for (i=2;i*i<=k;i++){
		if (!(k%i)) return 0;
	}
	return 1;
}

int main(int argc, char* argv[])
{
	int t, i;
	
	freopen("input.txt", "w", stdout); 
	for (str[0]=2,i=3,t=1;t<MAX;i++){
		if (isPirme(i)){
			str[t++]=i;
		}
	}
	for (i=0; i<MAX; i++) {
		printf("%d,", str[i]);
	}
	return 0;
}