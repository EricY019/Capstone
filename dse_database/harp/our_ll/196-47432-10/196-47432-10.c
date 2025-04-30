#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define CAPITAL(x) ((x) >= 'A' && (x) <= 'Z')
int lower(char *str);
int main(int argc, char **argv)
{
	int i;
	char *tmp = NULL;
	for (i = 1; i < argc; ++i) {
		tmp = realloc(tmp, strlen(argv[i]+1));
		strcpy(tmp, argv[i]);
		lower(tmp);
		printf("%s ", tmp);
	}
	printf("\n");
	return 0;
}

int lower(char *str)
{
	if (!str)
		return 1;
	size_t i;
	for (i = 0; str[i] > '\0'; ++i)
		str[i] = (CAPITAL(str[i]) ? str[i] + ('a' - 'A') : str[i]);
	return 1;
}
