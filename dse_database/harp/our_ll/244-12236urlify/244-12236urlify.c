#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//must supply string with enough buffer at the end to do in-place sub
// plus the "true length" of the string (length minus buffers)
// (this will do the in place swap and then return the pointer)
char* urlify(char* str, int len_true)
{
	//moving from back to front with two pointers seems better
	int write_pos = strlen(str) - 1;
	for (int i=len_true-1; i >= 0; i--)
	{
		if (str[i] == ' ')
		{
			str[write_pos] = '0';
			str[write_pos-1] = '2';
			str[write_pos-2] = '%';
			write_pos-=3;
		}
		else
		{
			str[write_pos] = str[i];
			write_pos--;
		}
	}

	return str;
}

int main(int argc, char* argv[])
{
	//process every argument
	if (argc > 1)
	{
		for (int i=1; i < argc; i++)
		{
			//we will work on getting the version of the string
			// with enough spaces
			int len = strlen(argv[i]);
			int spaces = 0;
			for (int j=0; j < len; j++)
			{
				if (argv[i][j] == ' ')
				{
					spaces++;
				}
			}
			//each space now counts as three (plus null terminator)
			int buffered_len = len + 2*spaces + 1;
			char* buffered_str = calloc(buffered_len,sizeof(char));
			strcpy(buffered_str, argv[i]);
			//move terminator
			buffered_str[buffered_len-1] = buffered_str[len];
			for (int k=len; k<=buffered_len-2; k++)
			{
				buffered_str[k] = ' ';
			}

			urlify(buffered_str, len);
			printf("%s -> %s\n", argv[i], buffered_str);

			free(buffered_str);
		}
	}

	return EXIT_SUCCESS;
}