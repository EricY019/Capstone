#include <stdio.h>

/*Печать таблицы температур*/

int main(int argc, char ** argv) {
	float fahr, celsius;
	int lower, upper, step;
	
	lower = 0;
	upper = 300;
	step  = 20;
	
	fahr = lower;
	
	printf("Таблица перевода из fahr в cels\n");
	
	while (fahr <= upper) {
		celsius = (5.0/9.0) * (fahr - 32);
		printf("fahr: %7.3f\tcels: %7.3f\n", fahr, celsius);
		fahr += step;
	}
}	
