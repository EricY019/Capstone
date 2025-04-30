#include <stdio.h>
#include <ctype.h>

int main()	{
	int chislo;
	char znak;
	for ( chislo = 97; chislo < 123; chislo++ )	{
		znak=(char)chislo;
		printf("%c",znak);
		printf(" - ");
		printf("%i\n",chislo);
	}
	printf("\n");
	for ( chislo = 65; chislo < 91; chislo++ )	{
		znak=(char)chislo;
		printf("%c",znak);
		printf(" - ");
		printf("%i\n",chislo);
	}
	printf("\n");
	for ( chislo = 48; chislo < 58; chislo++ )	{
		znak=(char)chislo;
		printf("%c",znak);
		printf(" - ");
		printf("%i\n",chislo);
	}
	printf("\n");
	return 0;
}
