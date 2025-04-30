#include <stdio.h>
int i, a=5;
int f1(int b){
	for(i=0;i<10;i++){
		a = b;
	}
}
int main(){
	a = f1(7);
}
