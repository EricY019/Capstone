#include <stdio.h>

void display_si64(__int64_t it);
void display_i64(__int64_t it);
void display_string(char* string);

__int64_t i;
int main(){
	display_i64(i);
	display_string("Hello world!\"\n");
	return 0;
}

void display_si64(__int64_t it){
	if(it < 0){
		putchar('-');
		it = -it;
	}
	display_i64(it);
}

void display_i64(__int64_t it){
	int c = '0' + it % 10;
	it /= 10;
	if(it > 0) display_i64(it);
	putchar(c);
}

void display_string(char* string){
	while(*string != '\0'){
		putchar(*string);
		++string;
	}
	putchar('\n');
}