#include <stdio.h>
#include <ctype.h>

void print_arguments(int argc, char *argv[]) 
{
	int i = 0;
	for(; i < argc; i++) {
		for(int q = 0; argv[i][q] != '\0'; q++) {
			char ch = argv[i][q];
			if(isalpha(ch) || isblank(ch)) {
				printf("%c == %d ", ch, ch);
			}
		}
		printf("\n");
	}
}


int main(int argc, char *argv[])
{
	print_arguments(argc, argv);
	return 0;
}
