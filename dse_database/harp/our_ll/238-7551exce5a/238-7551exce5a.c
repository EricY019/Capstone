// 编写findString函数，检查一个字符串是否包含另外一个字符串
#include <stdio.h>

int findString(const char source[],const char destination[]){
	int i,j;
	
	for(i = 0; source[i] != '\0'; ++i){
		j = 0;
		while(source[i+j] == destination[j] && destination[j] != '\0')
			++j;
		if(destination[j] == '\0')
			return i;
	}

	return -1;
}

int main(void){
	int findString(const char source[], const char search[]);
	
	printf("%i", findString("a chatterbox", "hoat"));
	
	return 0;
}
