#include <stdio.h>

int findNumber(int matrix[][4], int *row, int *columns, int number){
    int minRow = 0, maxCol = *columns;
    if(matrix == NULL || row < 0 || columns < 0){
        return 0;
    }
    while(minRow < 4 && maxCol >= 0 && matrix != NULL){
        if(matrix[minRow][maxCol] == number){
            *row = minRow;
            *columns = maxCol;
            return 1;
        }
        else if(matrix[minRow][maxCol] < number){
            ++minRow;
        }else if(matrix[minRow][maxCol] > number){
            --maxCol;
        }
    }
    return 0;
}

int main(int argc, const char *argv[])
{
    int row = 3;
    int col = 3;
    int matrix[4][4] = {
        {1,2,8,9},
        {2,4,9,12},
        {4,7,10,13},
        {6,8,11,15}
    };

    int result = findNumber(matrix, &row, &col, 7);
    printf("%d,%d\n",row, col);
    return 0;
}
