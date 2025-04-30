#include <stdio.h>

int triangle[] = {
75,
95, 64,
17, 47, 82,
18, 35, 87, 10,
20,  4, 82, 47, 65,
19,  1, 23, 75,  3, 34,
88,  2, 77, 73,  7, 63, 67,
99, 65,  4, 28,  6, 16, 70, 92,
41, 41, 26, 56, 83, 40, 80, 70, 33,
41, 48, 72, 33, 47, 32, 37, 16, 94, 29,
53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14,
70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57,
91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48,
63, 66,  4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31,
 4, 62, 98, 27, 23,  9, 70, 98, 73, 93, 38, 53, 60,  4, 23,
};

int left_child(int n, int i) {
	return i + n;
}

int right_child(int n, int i) {
	return i + n + 1;
}

int greedy_two_step(int triangle[], int rows, int len) {
	int max = triangle[0];
	int i = 0;
	int n = 1;
	int row = 0;

	while(row < rows - 1) {
		int left  = left_child(n, i);
		int right = right_child(n, i);

		int leftleft  = left_child(n + 1, left);
		int leftright = right_child(n + 1, left);

		int rightleft  = left_child(n + 1, right);
		int rightright = right_child(n + 1, right);

		int n_ll = 0;
		int n_lr = 0;
		int n_rl = 0;
		int n_rr = 0;

		if(left < len) {
			n_ll += triangle[left];
			n_lr += triangle[left];
		}
		if(right < len) {
			n_rl += triangle[right];
			n_rr += triangle[right];
		}

		if(leftleft   < len) n_ll += triangle[leftleft];
		if(leftright  < len) n_lr += triangle[leftright];
		if(rightleft  < len) n_rl += triangle[rightleft];
		if(rightright < len) n_rr += triangle[rightright];

		// Determine moving left or right is better,
		// either path works...
		if( (n_ll >= n_lr && n_ll >= n_rl && n_ll >= n_rr) ||
			(n_lr >= n_ll && n_lr >= n_rl && n_lr >= n_rr)) {
			i = left;
			max += triangle[left];
		} else {
			i = right;
			max += triangle[right];
		}

		n++;
		row++;
	}
	
	return max;
}

int main(int argc, char* argv[]) {
	int max = greedy_two_step(triangle, 15, 120);
	printf("%i", max);
	return 0;
}

