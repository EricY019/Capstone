#include<stdio.h>
int main(int argc, char *argv[]){
	for(register unsigned int cont = 0 ; cont < argc ; cont ++)
		printf("Parâmetro %d: %s\n",cont,argv[cont]);
}
