#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
	int counter;
	for(counter = 1;counter < argc;counter++){
		printf("Argument%d:  %s\n",counter,argv[counter]);
	}
	return 0;
}
