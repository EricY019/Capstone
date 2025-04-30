#include <stdio.h>
#define COLS 5
#define ROWS 5

int main (){

int array[ROWS][COLS] = { {1,	2,	3,	4,	75},
						  {6,	5,	4,	5,	3},
						  {3,	6,	7,	8,	3}, 
						  {4,	3,	0,	9,	4},
						  {2,	4,	2,	10,	11}};

int mid = COLS/2, i, max = 	array[i][mid], maxi;


for (i = 0; i < ROWS; i++){

	if (array[i][mid] >= max){
		max = array[i][mid];
		maxi = i;
	}
}

if (max < array[maxi][mid-1]){
	--mid;
	for(i = 0; i < ROWS; i++){
		
		if (array[i][mid] >= max){
		max = array[i][mid];
		maxi = i;
		}
	}		
} else if (max < array[maxi][mid+1]){
	++mid;
	for(i = 0; i < ROWS; i++){
		
		if (array[i][mid] >= max){
		max = array[i][mid];
		maxi = i;
		}
	}		
} 


if (max < array[maxi][mid-1]){
	--mid;
	for(i = 0; i < ROWS; i++){
		
		if (array[i][mid] >= max){
		max = array[i][mid];
		maxi = i;
		}
	}		
} else if (max < array[maxi][mid+1]){
	++mid;
	for(i = 0; i < ROWS; i++){
		
		if (array[i][mid] >= max){
		max = array[i][mid];
		maxi = i;
		}
	}		
} 

printf("Peek found at: Column %d  Row %d, is: %d\n", mid+1, maxi+1, max);
}

