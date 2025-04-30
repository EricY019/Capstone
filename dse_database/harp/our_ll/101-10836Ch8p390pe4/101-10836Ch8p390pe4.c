/* 
ITS240-01 
Lab 07 
Ch8p390pe4 
03/06/2017 
Daniel Kuckuck
	Write a declaration to store the following values in an array named rates: 18.24, 25.63, 5.94, 33.92, 3.71, 32.84, 35.93, 18.24, 6.92. Your program should then locate and display both the maximum and the minimum values in the array. 
*/
#include <stdio.h>
#define MAX 9
int main()
{
	float lowRate, highRate, rates[] = {18.24, 25.63, 5.94, 33.92, 3.71, 32.84, 35.93, 18.24, 6.92};
	lowRate = rates[1];
	highRate = rates[1];
	for (int i = 0; i < MAX; i++)
	{	
		if (rates[i] <= lowRate)
			lowRate = rates[i];
		else if (rates[i] >= highRate)
			highRate = rates[i];
		//printf("\nlowrate is now %.2f, highrate is now %.2f", lowRate, highRate);
	}
	printf("\nThe array is: ");
	for (int i = 0; i < MAX; i++)
	{
		printf("%.2f ", rates[i] );
	}
	printf("and \nthe array's highest number is %.2f, and the lowest %.2f.\n", highRate, lowRate);
	return 0;
}
