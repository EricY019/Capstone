#define TYPE int
#define DIM 512

TYPE A[DIM][DIM];
TYPE B[DIM][DIM];
TYPE C[DIM][DIM];
	
int
main(void)
{
	int i = 0;

	for (i = 0; i < DIM; i++) {
		int j;

		for (j = 0; j < DIM; j++) {
			A[i][j] = i + j;
			B[i][j] = i - j;
		}
	}

	for (i = 0; i < DIM; i++) {
		int j;

		for (j = 0; j < DIM; j++) {
			int k, sum = 0;

			for (k = 0; k < DIM; k++) {
				sum += A[i][k] * B[k][j];
			}
			C[i][j] = sum;
		}
	}
}
