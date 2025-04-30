// 编写intToStr的函数
#include <stdio.h>

void intToStr(int value, char result[]){
	char intString[81];
	int i, j = 0;
	
	if(value < 0){
		result[0] = '-';
		value = - value;
		j = 1;
	}
	
	do{
		intString[i] = value % 10;
		++i;
		value = value / 10;
	}while(value != 0);
	
	for(--i; i >= 0; --i){
		result[j] = intString[i] + '0';
		++j;
	}
	
	result[j] = '\0';
}

int main(void){
	void intToStr(int value, char result[]);
	char result[81];
	
	intToStr(-867, result);
	
	printf("%s", result);
	
	return 0;
}
