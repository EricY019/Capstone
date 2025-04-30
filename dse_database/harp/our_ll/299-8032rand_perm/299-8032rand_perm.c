
#include <stdio.h>
#include <stdlib.h>
#include <time.h>


volatile int random_range (int min, int max) {

	volatile int r = 0;
	r = rand() % (max + 1 - min) + min;
	return r;
}

void swap (int* arr, int x, int y){

	int tmp = arr[x];

	arr[x] = arr[y];
	arr[y] = tmp;

}

int main () {

	int arr[] = {0,1,2};

	int max = sizeof (arr) /sizeof (int) -1;

	int idx = 0;
	volatile int r_idx = 0;


	int cnt1 ,cnt2, cnt3, cnt4, cnt5, cnt6;

	cnt1  = cnt2 = cnt3 = cnt4 = cnt5 = cnt6 = 0;
	int k = 10000000;

	srand(time(NULL));
	while (k--){
		idx = r_idx = 0;
		while (idx <= max){

			r_idx = random_range (idx, max);

			swap (arr, idx, r_idx);

			idx++;

		}
		if (arr[0] == 0 && arr[1] == 1 && arr[2] == 2){
			cnt1++;
		}
		else if (arr[0] == 1 && arr[1] == 2 && arr[2] == 0){
			cnt2++;
		}
		else if (arr[0] == 2 && arr[1] == 0 && arr[2] == 1){
			cnt3++;
		}
		else if (arr[0] == 0 && arr[1] == 2 && arr[2] == 1){
			cnt4++;
		}
		else if (arr[0] == 1 && arr[1] == 0 && arr[2] == 2){
			cnt5++;
		}
		else if (arr[0] == 2 && arr[1] == 1 && arr[2] == 0){
			cnt6++;
		}else
		{
			printf ("unknown %d %d %d\n", arr[0], arr[1], arr[2]);
		}
	}

	printf ("%d %d %d %d %d %d", cnt1, cnt2, cnt3, cnt4, cnt5, cnt6);

	printf ("\n");
}


