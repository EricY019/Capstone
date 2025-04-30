#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

void print_matrix(int size1, int size2, double *matrix) {
  int i, j;

  for (i = 0; i < size1; i++) {
    for (j = 0; j < size2; j++) {
      printf("%.0lf ", matrix[i*size2+j]);
    }

    printf("\n");
  }


}

void multiply(int size1, int size2, int size3,
              double *matrix1, double *matrix2,
              double *result) {
  int i, j, k;
  
  for (k = 0; k < size3; k++) {
    for (i = 0; i < size1; i++) {
      double sum = 0;

      for (j = 0; j < size2; j++) {
        sum += matrix1[i*size2+j]*matrix2[j*size3+k];
      }

      result[i*size3+k] = sum;
    }

  }
  
}

double *new_matrix(int size1, int size2) {
  double *m = (double *)malloc(size1*size2*sizeof(double));
  assert (m != NULL);
  return m;
}

void free_matrix(double *matrix) {
  if (matrix != NULL) {
    free(matrix);
  }
}

int main(int argc, char *argv[]) {
  double *matrix1;
  double *matrix2;
  double *result;
  const int SIZE1=3;
  const int SIZE2=2;
  const int SIZE3=3;

  int i, j;

  matrix1 = new_matrix(SIZE1, SIZE2);
  matrix2 = new_matrix(SIZE2, SIZE3);
  result = new_matrix(SIZE1, SIZE3);

  // Init matrixes
  for(i = 0; i < SIZE1; i++) {
    for (j = 0; j < SIZE2; j++) {
      matrix1[i*SIZE2+j] = i;
    }
  }
  
  for(i = 0; i < SIZE2; i++) {
    for (j = 0; j < SIZE3; j++) {
      matrix2[i*SIZE3+j] = j;
    }
  }

  printf("Matrix1:\n");
  print_matrix(SIZE1, SIZE2, matrix1);
  printf("Matrix2:\n");
  print_matrix(SIZE2, SIZE3, matrix2);
  
  // Apply the matrix multiplication
  multiply(SIZE1, SIZE2, SIZE3, matrix1, matrix2, result);
  printf("Matrix3:\n");
  print_matrix(SIZE1, SIZE3, result);

  // Free the matrix
  free_matrix(matrix1);
  free_matrix(matrix2);
  free_matrix(result);
  
  return 0;
}

