#include <stdio.h>
#include <stdlib.h>


typedef struct sample_s
{
	int ppm;
	int mv;
} sample_t;

sample_t curve[] = {  { 10000, 265 },
					  { 8000, 268 },
					  { 6000, 274 },
					  { 4000, 281 },
					  { 3000, 288 },
					  { 2000, 293 },
					  { 1500, 298 },
					  { 1000, 303 },
					  { 800, 307 },
					  { 600, 314 },
					  { 400, 324 } };


size_t nsamples = sizeof( curve ) / sizeof( sample_t );


int main( int argc, char * argv[] )
{
	int i = 0;
	int j = 0;
	int k = 0;

	for( i = 0; i < nsamples - 1; i++ )
	{
		int ppm0 = curve[i+1].ppm;
		int ppm = curve[i].ppm;
		int mv0 = curve[i].mv;
		int mv = curve[i+1].mv;

		int diffppm = ppm0 - ppm;
		int diffmv = mv0 - mv;

		int step = (diffppm / diffmv);

		for( j = mv0, k = ppm; j < mv; j++, k-=step  )
			printf("%d;%d\n", j, k );
	}

	return 0;
}

/* eof */
