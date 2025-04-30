#define _POSIX_C_SOURCE 200809L
 
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
 
#define NUM_RECORDS (50 * 1000 * 444)
 
struct CMemoryTrade {
	long TradeId; long ClientId; int VenueCode; int InstrumentCode; long Price; long Quantity; char Side;
};
 
struct CMemoryTrade trades[NUM_RECORDS];
 
void initTrades() {
	for (long i = 0; i < NUM_RECORDS; i++) {
		struct CMemoryTrade *trade = &(trades[i]);
 
		trade->TradeId = i;
		trade->ClientId = 1;
		trade->VenueCode = 123;
		trade->InstrumentCode = 321;
 
		trade->Price = i;
		trade->Quantity = i;
 
		if ((i&1) == 0) {
			trade->Side = 'B';
		} else {
			trade->Side = 'S';
		}
	}
}
 
double getTime(){
	struct timespec spec;
	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &spec);	
	double s  = spec.tv_sec;
	double ms = spec.tv_nsec;
	return (s*1000 + ms / 1000000);
}
 
void perfRun(int runNum) {	
	double startT = getTime();
	initTrades();

	long buyCost = 0;
	long sellCost = 0;
 
	for (long i = 0; i < NUM_RECORDS; i++) {
		struct CMemoryTrade *trade = &(trades[i]);
		if (trade->Side == 'B') {
			buyCost += trade->Price * trade->Quantity;
		} else {
			sellCost += trade->Price * trade->Quantity;
		}
	}
	double endT = getTime();
	double duration =  endT - startT;
	printf("%d - duration %d ms\n", runNum, (int)duration);
	printf("buyCost = %ld sellCost = %ld\n", buyCost, sellCost);
}
 
int main() {
	for (int i = 0; i < 5; i++) {
		perfRun(i);
	}
}
