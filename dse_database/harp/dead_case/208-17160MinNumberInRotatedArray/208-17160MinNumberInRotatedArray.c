#include <stdio.h>
/**


**/

int findMinNumberInRotatedArray(int *array, int low, int high){
    if(array == NULL || low < 0 || high <= 0 || high <= low ){
        return -1;
    }
    if(high - low == 1){
        return high;
    }
    int medium = (low + high)/2;
    int position;

    if(array[medium] >= array[low]){
        position = findMinNumberInRotatedArray(array, medium, high);
    }else if(array[medium] <= array[low]){
        position = findMinNumberInRotatedArray(array, low, medium);
    }

    return position;
}

int findMinNumberInRotatedArray_loop(int *array, int low, int high){
    if(array == NULL || low < 0 || high < 0 || high < low ){
        return -1;
    }
    int medium;
    while(high - low > 1){
        medium = (high + low)/2;
        if(array[medium] >= array[low]){
            low = medium;
        }else if(array[medium] <= array[low]){
            high = medium;
        }
    }

    return high;
}

int findMinNumberInRotatedArray_improved(int *array, int length){
    int low = 0;
    int high = length - 1;
    int medium = low; //防止前个元素旋转到数组后面，此时依旧是顺序的。low 就是我们需要的元素
    while(array[low] >= array[high]){ //旋转后第一个元素一定大于等于最后一个元素。当未旋转时此条件不满足
        medium = (low + high)/2;
        if(high - low == 1){
            medium = high;
            break;
            //low 一直指向前半部分，high 一直指向后半部分，当两者相邻时，high 指向的就是最小值
        }
        //防止 10111， 11101 这种情况出现, 如果出现则只能遍历查找
        if(array[low] == array[high] && array[low] == array[medium]){
            int min = array[low];
            for(int i = low; i <= high; ++i){
                if(array[i]<min){
                    min = array[i];
                }
            }
            return min;
        }
        if(array[medium] >= array[low]){
            low = medium;
        }else if(array[medium] <= array[low]){
            high = medium;
        }
    }
    return medium;
}

int main(int argc, const char *argv[])
{
    //int array[] = {3,4,5,1,2};
    //int array[] = {3,3,3,3,3,3,3,3, 1,1,1,1,1,2,2};
    //int position = findMinNumberInRotatedArray(array, 0, 4);
    //
    //int position = findMinNumberInRotatedArray_loop(array, 0, 4);

    int array[] = {1,1,1,0,1};
    int position = findMinNumberInRotatedArray_improved(array, 5);
    printf("%d\n", position);
    return 0;
}
