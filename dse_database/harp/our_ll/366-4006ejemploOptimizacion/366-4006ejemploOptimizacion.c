#include <stdio.h>
double funcion(double a, unsigned valor){
	double x = 1.0;
	unsigned j;
	for (j = 0;  j < valor; j++) {
		x *= a;
	}	 
	return x;
}

int main(int argc, const char *argv[]){
	double suma = 0.0;
	unsigned i;
	for (i = 0;  i < 100000000; i++) {
		suma += funcion(i, i % 5);	
	}	 
	printf("suma = %g\n", suma);
	
	return 0;
}
