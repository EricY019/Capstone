#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void
indexfile(FILE *in, FILE *out)
{
	int	ch, ch0, ch1;
	long	pos;

	pos = 0;
	ch0 = 0;
	ch1 = 0;
	while ((ch = fgetc(in)) != EOF) {
		if ((ch1 == '\n' || ch1 == 0) && ch0 == '%' && ch == '\n') {
			fwrite(&pos, 1, sizeof pos, out);
			pos = ftell(in);
		}
		ch1 = ch0;
		ch0 = ch;
	}
	fwrite(&pos, 1, sizeof pos, out);
}

int
main(int argc, char *argv[])
{
	FILE	*in, *out;

	if (argc == 1) {
		indexfile(stdin, stdout);
	} else while (*++argv) {
		if (strcmp(*argv, "-") == 0) {
			indexfile(stdin, stdout);
			continue;
		}
		in = fopen(*argv, "r");
		if (in == NULL) {
			perror(*argv++);
			continue;
		}
		out = fopen(*++argv, "w");
		if (out == NULL) {
			perror(*argv);
			fclose(in);
			continue;
		}
		indexfile(in, out);
		fclose(in);
		fclose(out);
	}

	return(EXIT_SUCCESS);
}
