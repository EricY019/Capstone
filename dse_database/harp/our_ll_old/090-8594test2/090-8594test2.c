// GNU gcc compiler -std=c11
// Binary search
#include "stdio.h"
#include "stdlib.h"
#include "math.h"

#ifndef MAX
#define  MAX 20
#endif

int search(int *array,int a,int be,int en){

    if (be==en-1)   return be;
    if (array[be]==a)   return be;
    int result;
    int mid;
    mid=(be+en)/2;
    if (array[mid]<a){
        be=mid;
    } else{
        en=mid;
    }
    result=search(array,a,be,en);
    return result;
}

int main(void) {
  int array[MAX]={1,4,6,8,10,13,17,18,24,26,30};

  int index=-1;
 // index=search(array,8,1,18);
 // printf("%d\n", index);

  for(int i=0;i<MAX*2;i++){
    index=search(array,i,1,18);
    if (index!=-1){
      printf("%d's index is %d\n",array[index],index );
  }
    else{
      printf("%d can't be found\n",i );
    }

  }

  return 0;
}
