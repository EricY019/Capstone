#include <stdio.h>

int main()
{
	int i;
	int answer;
	int found = 0;
	int cur = 20;

	while( !found ){
		cur++;
		found = 1;
		for( i = 1; i <= 20; i++ ){
			if( ( cur % i ) != 0 ){
				found = 0;
				break;
			}
		}
		
	}

	printf("%d\n", cur);
	
	return 0;
}
