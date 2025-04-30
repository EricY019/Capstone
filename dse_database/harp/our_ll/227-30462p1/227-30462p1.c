#include <assert.h>
#include <stdlib.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* twoSum(int* nums, int numsSize, int target) {
    int *result = (int*)malloc(sizeof(int) * 2);

    for (int i = 0; i < numsSize; ++i) {
        int v2 = target - nums[i];
        for (int j = i+1; j < numsSize; j++) {
            if (nums[j] == v2) {
                result[0] = i;
                result[1] = j;
                break;
            }
        }
    }

    return result;
}

int main(int argc, char** argv) {

    // Case 1
    int input1[] = {2, 7, 11, 15};
    int *r1 = twoSum(input1, 4, 9);
    assert( r1[0] == 0 );
    assert( r1[1] == 1 );

    return 0;
}
