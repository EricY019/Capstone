//http://stackoverflow.com/questions/4130936/perfect-hash-function
//10, 100, 32, 45, 58, 126, 3, 29, 200, 400, 0
#include <stdio.h>
int hash (int n) {
  switch (n) {
    case 10:   return 0;
    case 100:  return 1;
    case 32:   return 2;
    case 45:   return 3;
    case 58:   return 4;
    case 126:  return 5;
    case 3:    return 6;
    case 29:   return 7;
    case 200:  return 8;
    case 400:  return 9;
    case 0:    return 10;

    default:   return -1;
  }
}

int perfect_hash(int n){
	return (n ^ 28) % 13;
}

#define HASH(x)    ((((x) << 2) ^ ((x) >> 2)) & 0xF)

int search_table(int n,  int num_table[], int num){
	int i = 0;
	for(i = 0; i<num; i++){
		if(num_table[i] == n){
			return i;
		}
	}

	return -1;
}

int main(){
	int num_table[] = {10, 100, 32, 45, 58, 126, 3, 29, 200, 400, 0};
	int i = 0;
	int num = sizeof(num_table)/sizeof(num_table[0]);

	for(i = 0; i<num; i++){
		int val = hash(num_table[i]);
		printf("%d, ", val);
	}
	printf("\n");

	for(i = 0; i<num; i++){
		int val = perfect_hash(num_table[i]);
		printf("%d, ", val);
	}
	printf("\n");

	for(i = 0; i<num; i++){		
		int val = HASH(num_table[i]);
		printf("%d, ", val);
	}
	printf("\n");

	for(i = 0; i<num; i++){
		int val = search_table(num_table[i], num_table, num);
		printf("%d, ", val);
	}
	printf("\n");


#define TEST_TIMES (10000000)
	int times = 0;
	for(times = 0; times < TEST_TIMES; times++){
		for(i = 0; i<num; i++){
			int val = hash(num_table[i]);
			//int val = perfect_hash(num_table[i]);
			//int val = HASH(num_table[i]);
			//int val = search_table(num_table[i], num_table, num);
			//printf("val = %d\n", val);
		}
	}
}
