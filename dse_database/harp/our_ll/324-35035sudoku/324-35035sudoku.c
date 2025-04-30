#include <stdio.h>
#include <stdlib.h>

#define UNASSIGNED 0
#define N 9
#define TRUE 1
#define FALSE 0

int grid[N][N] = {{8, 0, 0, 0, 0, 0, 0, 0, 0},
                     {0, 0, 3, 6, 0, 0, 0, 0, 0},
                     {0, 7, 0, 0, 9, 0, 2, 0, 0},
                     {0, 5, 0, 0, 0, 7, 0, 0, 0},
                     {0, 0, 0, 0, 4, 5, 7, 0, 0},
                     {0, 0, 0, 1, 0, 0, 0, 3, 0},
                     {0, 0, 1, 0, 0, 0, 0, 6, 8},
                     {0, 0, 8, 5, 0, 0, 0, 1, 0},
                     {0, 9, 0, 0, 0, 0, 4, 0, 0}};

int SOLVE_SUDOKU(int grid[N][N]);

int FIND_UNASSIGNED(int grid[N][N],int *row,int *col);

int IS_SAFE(int grid[N][N], int row, int col, int num);

int USED_IN_LINE(int grid[N][N], int row, int col, int num);

int USED_IN_COLUMN(int grid[N][N], int row, int col, int num);

int USED_IN_BOX(int grid[N][N], int star_row, int start_col, int num);

void PRINT_GRID(int grid[N][N]);

int main(){

	SOLVE_SUDOKU(grid);
	PRINT_GRID(grid);
    
    return 0;
}

int FIND_UNASSIGNED(int grid[N][N],int *row,int *col){
	int r = *row, c = *col;

	for (r = 0; r < N; r++)
        for (c = 0; c < N; c++){
        	if (grid[r][c] == UNASSIGNED){
            	*row = r;
            	*col = c;
            	return TRUE;
            }
        }

    return FALSE;
}

int USED_IN_LINE(int grid[N][N], int row, int col, int num){

	for(col = 0; col < N; col++){
		if(grid[row][col] == num)
			return TRUE;
	}

	return FALSE;
}

int USED_IN_COLUMN(int grid[N][N], int row, int col, int num){

	for(row = 0; row < N; row++){
		if(grid[row][col] == num)
			return TRUE;
	}

	return FALSE;
}

int USED_IN_BOX(int grid[N][N], int star_row, int start_col, int num){
	int row, col;

	for (row = 0; row < 3; row++)
        for (col = 0; col < 3; col++)
            if (grid[row+star_row][col+start_col] == num)
                return TRUE;

    return FALSE;
}

int IS_SAFE(int grid[N][N], int row, int col, int num){
	if(USED_IN_LINE(grid,row,col,num) == FALSE &&  USED_IN_COLUMN(grid,row,col,num) == FALSE && USED_IN_BOX(grid,row - row%3,col - col%3,num) == FALSE )
			return TRUE;

    return FALSE;
}

void PRINT_GRID(int grid[N][N]){
	int row, col;

	system("clear");
    for (row = 0; row < N; row++){
       for (col = 0; col < N; col++)
            printf("%2d", grid[row][col]);
        printf("\n");
    }
}

int SOLVE_SUDOKU(int grid[N][N]){

	int row, col, num;

	if(FIND_UNASSIGNED(grid,&row,&col) == FALSE)
		return TRUE;

	for(num = 1; num <= N; num++){
		if(IS_SAFE(grid,row,col,num) == TRUE){
			grid[row][col] = num;
			//PRINT_GRID(grid);

			if(SOLVE_SUDOKU(grid) == TRUE)
				return TRUE;

			grid[row][col] = UNASSIGNED;
		}
	}

	return FALSE;
}
