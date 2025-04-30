/*
 * initials.c
 */
#include <stdio.h>
#include <ctype.h>

int main (int argc, char* argv[])
{
	char inital;

	for (int i = 1; i < argc; i++)
	{
		inital = argv[i][0];

		if (islower(inital))
		{
			inital = toupper(inital);
		}
		printf("%c", inital);
	}

	return 0;
}
