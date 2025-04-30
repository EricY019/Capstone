#include<stdio.h>
#include<ctype.h>
#include<string.h>
void print_letters(char arg[]);
int soma(x, y) int x; int y;
{
	return x + y;
}

void print_arguments(int argc, char *argv[]) {
	int i = 0;
	for(i = 0; i < argc; i++){
		print_letters(argv[i]);
	}
}

void print_letters(char arg[]){
	int i = 0;
	for(i = 0; strlen(&arg[i]); i++){
		char ch = arg[i];
		if(isalpha(ch) || isblank(ch)) {
			printf("%c == %d\n", ch, ch);
		}
	}
	printf("\n");
}

int main(int argc, char *argv[]) {
	print_arguments(argc, argv);
	printf("%d", soma(1,2));
	return 0;
}

