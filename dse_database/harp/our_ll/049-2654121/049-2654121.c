/*
 * best time to buy and sell stock
 *
 * 	costs 11 minutes
 * 	2016.10.10
 * 	zhuyehang
 */

#include <stdio.h>

int maxProfit(int *prices, int priceSize);

int main(void)
{
	int prices[6] = {7,1,5,3,6,4};
	int priceSize = sizeof(prices) / sizeof(prices[0]);

	printf("%d\n", maxProfit(prices, priceSize));
	return 0;
}

int maxProfit(int *prices, int priceSize){
	int min = *prices;
	int profit = *prices - min;

	for(int i = 1; i < priceSize; i++){
		if(min > *(prices + i))
			min = *(prices + i);
		profit = ((*(prices + i) - min) > profit) ? (*(prices + i) - min) : profit;
	}
	return profit;
}
