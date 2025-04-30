#include <stdio.h>
#include <string.h>

void reverse_string_bitwise(char *input)
{
	int i = 0;
	for (i=0 ; i<strlen(input)/2 ; i++)
	{
		*(input + i) = *(input + i) ^ *(input + strlen(input) - i - 1);
		*(input + strlen(input) - i - 1) = *(input + i) ^ *(input + strlen(input) - i - 1);
		*(input + i) = *(input + i) ^ *(input + strlen(input) - i - 1);
	}
}

int main(int argc, char **argv)
{
	 char input[] = "the sky is blue";

	printf("[before] input : %s\n",input);
	reverse_string_bitwise(input);
	printf("[after]  input : %s\n",input);

	return 0;
}