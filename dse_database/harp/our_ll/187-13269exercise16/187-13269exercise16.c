//Programming Exercise 6.16.16
#include <stdio.h>
int main(void)
{
	double money, daphne, deirdre;
	int years = 1;

	money = 100.0;
	daphne = money;
	deirdre = money;
	printf("          Daphne   Deirdre\n");

	while (deirdre <= daphne)
	{
		daphne += money * 0.10;
		deirdre *= 1.05;
		printf("Year%2d : $%-8.2f $%-8.2f\n", years, daphne, deirdre);
		years++;
	}
	printf("Deirdre's investment beyond Daphne's investment takes %d years!\n", years-1);
	printf("Daphne will have $%.2f, and Deirdre will have $%.2f since then!\n", daphne, deirdre);
}