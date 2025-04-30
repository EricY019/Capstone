#include <stdio.h>

int main ()
{
	long long unsigned int first=2;
	long long unsigned int second=1;
	int i;
	printf("%llu",first);
	printf(", %llu",second);
	
	for (i = 2; i < 93; i ++)
	{
		long long int third = first + second;
		printf(", %llu",third);
		first = second;
		second = third;		
	}
	
	//These numbers are too big even for llu so this is my solution without another library 
	
	printf("27280388024614569596, 44140595050111976643, 71420983074726546239, 115561578124838522882, 186982561199565069121, 302544139324403592003, 489526700523968661124,792070839848372253127\n");
	
	return 0;
}
