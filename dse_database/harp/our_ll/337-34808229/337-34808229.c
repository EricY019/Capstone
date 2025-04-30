#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int* majorityElement(int* nums, int numsSize, int* returnSize);

int main(void){
	//int nums[] = {1,2,2,3,2,1,1,3};
	int nums[] = {1,1,1,3,3,2,2,2};
	int numsSize = sizeof(nums)/sizeof(nums[0]);
	int returnSize;

	int * value = majorityElement(nums, numsSize, &returnSize);
	int i;	
	for(i = 0; i < returnSize; i++){
		printf("%d\n", value[i]);
	}
	free(value);

	return 0;
}

int* majorityElement(int* nums, int numsSize, int* returnSize) {
	int *result = (int *)malloc(2*sizeof(int));
	if(numsSize <= 1){
		memcpy(result, nums, sizeof(int)*numsSize);
		*returnSize = numsSize;
		return result;
	}

	result[0] = 0;
	result[1] = 0;

	int i, count1 = 0, count2 = 0;
	for(i = 0;  i < numsSize; i++){
		if(result[0] == nums[i]) ++count1;
		else if(result[1] == nums[i]) ++count2;
		else if(count1 == 0) {
			result[0] = nums[i];
			count1 = 1;
		}
		else if(count2 == 0) {
			result[1] = nums[i];
			count2 = 1;
		}
		else{
			--count1;
			--count2;
		}
	}

	count1 = 0;
	count2 = 0;
	int a = result[0];
	int b = result[1];

	for(i = 0; i < numsSize; i++){
		if(a == nums[i])
			++count1;
		else if(b == nums[i])
			++count2;
	}

	int judge1 = (count1 > numsSize / 3);
	int judge2 = (count2 > numsSize / 3);
	*returnSize = judge1 + judge2;

	return result + 1 - judge1;
}
