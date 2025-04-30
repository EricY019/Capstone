// Explores the use of enum values for symbolic constants.

// Conclusion: looks like they can.

// Universal {{{
enum COUNT_TO_THREE {
	ONE,
	TWO,
	THREE
};
// Universal }}}

// Main {{{
#include <stdio.h>

#define PrintExpression(x) printf(#x " = [%d]\n", (x))

int main(void) {
	PrintExpression(ONE);
	PrintExpression(TWO);
	PrintExpression(THREE);

	return 0;
}
// Main }}}
