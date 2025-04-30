#include <stdio.h>

int main()
{ 
  // create a matrix 10 x 10 
  int matrix[10][10] = {0}; // initialize all elements with '0'
  matrix[2][3] = 1; // set the element at the row 2 col 3 with '1'

  // step trough the matrix
  for (int row = 0; row < 10; row++)
  {
    for (int col = 0; col < 10; col++)
    {
      // print the elements inside the rows
      printf("%i ", matrix[row][col]);
    }
    printf("\n");
  }  
  
  return 0;
}
