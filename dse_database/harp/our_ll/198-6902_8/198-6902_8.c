/*
Exercise 2-8. Write a function rightrot(x,n) that returns the value of the
integer x rotated to the right by n positions.
*/

#include <stdio.h>
#include <limits.h>

int rightrot(unsigned x, int n);
void printBits(size_t const size, void const * const ptr);

int main(void)
{
	unsigned int x;
	x = 52942; //0b1100111011001110
	int n;
	n = 6;

	printf("original:   ");
	printBits(sizeof(x), &x);
	x = rightrot(x, n);
	printf("\nafter rotr: ");
	printBits(sizeof(x), &x);

	return 0;
}

int rightrot(unsigned x, int n)
{
	int sz = sizeof(x)*CHAR_BIT;
	if (n > sz) {
		printf("illegal move\n");
		return 0;
	}
	return (x >> n) | (x << (sz - n));
}

// print binary
// https://stackoverflow.com/a/3974138/6049386
void printBits(size_t const size, void const * const ptr)
{
    unsigned char *b = (unsigned char*) ptr;
    unsigned char byte;
    int i, j;

    for (i = size - 1; i >= 0; i--)
    {
        for (j = 7; j >= 0; j--)
        {
            byte = (b[i] >> j) & 1;
            printf("%u", byte);
        }
    }
    puts("");
}
