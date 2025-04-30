#include <stdio.h>
int main (int argc, char **argv)
{
 int depth = 1;
 int summaryRasa = 0;
 int totalLines = 0;

 for (int i = 1; i < argc; i++) {
 	FILE *fp;
	char *filename=argv[i];
    fp=fopen(filename, "r");
 	int rasa = 0;
 	int lines = 0;
	 for (int ch = fgetc(fp); ch != EOF; ch = fgetc(fp)) {
	 	char ch1 = (char)ch;
	 	switch (ch1) {
	 		case ';': rasa += depth; break;
	 		case '{': depth ++; break;
	 		case '}': depth --; break;
	 		case '\n': lines ++; break;
	 	}
	 }
	 fclose(fp);
	 printf("%s: lines %d, RaSa %d \n", filename, lines, rasa);
	 summaryRasa += rasa;
	 totalLines += lines;
 }

 	 printf("total: lines %d, RaSa %d \n", totalLines, summaryRasa);
}