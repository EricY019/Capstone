#include<stdio.h>

int main(int argc, char *argv[]){
	int i = argc-1;
	while(i >= 0) {
		printf("arg %d: %s\n", i, argv[i]);
		i--;
	}

	char *states[] = {"California", "Oregon", "Washington", "Texas"};

	int num_states = 4;
	int y = 0;
	while(y < num_states) {
		printf("state %d: %s\n", y, states[y]);
		y++;
	}

	int copies = 0;
	while(copies < argc) {
		if (copies==3){
			break;
		}
		states[copies] = argv[copies];
		copies++;
	}

	int r = 0;
	while(r < num_states) {
		printf("state %d: %s\n", r, states[r]);
		r++;
	}

	return 0;
}
