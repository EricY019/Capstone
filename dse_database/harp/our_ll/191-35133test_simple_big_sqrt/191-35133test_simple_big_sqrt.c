/** Simple int sqrt algo test */

#include <stdio.h>
#include <time.h>
#include <math.h>

int main(int argc, char **argv)
{

	//long long int n = 274259595204LL;
	long long int n = 581170932765279684LL;
	//long long int n = 4LL;

	long double x = sqrtl((long double) n);

	printf("Math function sqrt of %lli is %Lf \n\n", n, x);

	long long int sqrt = 0;
	
	time_t starttime = time(NULL);

	for (long long int i = 2; i < n/2 ; i++)
	{
		if (i*i == n)
		{
			sqrt = i;
			break;
		}
	}
	
	time_t endtime = time(NULL);

	double runtimeinsecs = difftime(endtime, starttime);

	printf("Big sqrt mp of %lli is %lli \n", n, sqrt);

	printf("Time taken: %f \n", runtimeinsecs);
	
	return 0;

}


				
