#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
	if(argc > 1 && !strcmp(argv[1], "-s")) {
		FILE *in = fopen("tt", "rb");
		fseek(in, -4, SEEK_END);
		int size;
		fread(&size, 1, 4, in);
		int size_all;
		fseek(in, 0, SEEK_END);
		size_all = ftell(in);
		fseek(in, size, SEEK_SET);
		int i;
		for(i = size; i < size_all - 4; i++)
			putchar(fgetc(in));
		fclose(in);
		return 0;
	}
	FILE *in = fopen("tt.c", "rb");
	if(in) {
		FILE *out = fopen("tt", "ab");

		int size = ftell(out);
		char ch;
		while((ch = fgetc(in)) != EOF)
			fputc(ch, out);
		fwrite(&size, 1, 4, out);
		fclose(out);
		fclose(in);
	}
	return 0;
}
