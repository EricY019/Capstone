#include<stdio.h>


int main(void){
	unsigned long long r = 16;
	
	for(int i = 0; i < 300000 ; i++){
		r = ( r * 1103515245 + 12345 ) & 0xFFFFFFFF;
		putc(0x61 + ( 26 * ( r / 0x10000) ) / 0x10000,stdout);
	}
}
