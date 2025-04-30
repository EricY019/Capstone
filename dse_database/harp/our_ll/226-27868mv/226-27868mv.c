#include<stdio.h>

int main(int argc, char *argv[]){

	if(argc != 3){
		printf("Falta un argumento\n");
		return 0;
	}else if(argc == 3){
		FILE *pFOrigen;
		FILE *pFDestino;
		unsigned char byte;
		pFOrigen = fopen(argv[1],"r+b"); 
		pFDestino = fopen(argv[2],"ab+");
		while(!feof(pFOrigen)){
			byte = fgetc(pFOrigen);
			fputc(byte,pFDestino);
		}
		fclose(pFOrigen);
		fclose(pFDestino);

		// depues de copiar de bit a bit hay que borrar el origen

		remove(argv[1]);	
	
	}
	return 0;
}
