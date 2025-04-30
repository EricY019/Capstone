#include<stdio.h>
#include<stdlib.h>


int* tabela;
int* pregledano;

int isAbundant(int stevilo) {
	int i;
	int vsota = 0;
	for(i = 1; i < stevilo/2 + 1; i++) {
		if(stevilo % i == 0) {
			vsota += i;
		}
	}
	return vsota > stevilo ? 1 : 0;
}

int main() {

	
	int indeks = 0;
	tabela = malloc(6965*sizeof(int));
	

	int limit = 28123;
	pregledano = malloc(28123*sizeof(int));
	int i,x;

	for(i = 1; i <= 28123; i++) {
		if(isAbundant(i)) {
			tabela[indeks++] = i;
		}
	}

	long vsota = 0;
	for(i = 0; i < indeks; i++) {
		for(x = i; x < indeks; x++) {
			if(tabela[i] + tabela[x] <= 28123) {
				pregledano[tabela[i]+tabela[x]] = 1;
			}
		}
	}

	for(i = 0; i < 28123; i++) {
		if(pregledano[i] == 0) {
			vsota += i;
		}
	}
	printf("Sum of all the positive integers which cannot be written as the sum of two abundant numbers:\n");
	printf("%ld\n", vsota);







	return 0;
}