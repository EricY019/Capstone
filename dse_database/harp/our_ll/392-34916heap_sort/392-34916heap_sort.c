//堆结构采用数组实现，其实索引为0
#include <stdio.h>
#define MAX_HEAP_LEN 100
static int heap[MAX_HEAP_LEN];
static int heap_size = 0;       // the number of the elements int heaps

static void swap(int *a, int *b)
{
    int temp = 0;
    temp = *b;
    *b = *a;
    *a = temp;
}

/*
* void shift_up(int i)
* 
*/
static void shift_up(int i)
{
  int done = 0;
  if(i == 0) return ;     //  node is root already
 
  while(i!=0 && (!done))
  {
    if(heap[i] > heap[(i-1)/2])
    {// the current is larger than the parent , then swap
        swap(&heap[i], &heap[(i-1)/2]);
    }
    else
    {// the job is already done
        done = 1;
    }
    i = (i-1)/2;
  }
}
/*
*
*/
static void shift_down(int i)
{
  int done = 0;
  if(2*i+1 > heap_size) return; // node i is a leaf
  
  while(2*i + 1 < heap_size && (!done))
  {
    i = 2*i + 1;        // jump to the left child
    if((i+1 <  heap_size)&&(heap[i+1] > heap[i]))
    {// find the bigger one of the two children
      i++;
    }
    if(heap[(i-1)/2] < heap[i])
    {
      swap(&heap[(i-1)/2],&heap[i]);
    }
    else
    {
      done = 1;
    }
  }
}

static void delete(int i)
{
	 int last = heap[heap_size-1];  //  get the last one;
	 heap_size--;                   //  shrink the heap
	 if(i == heap_size) return;
	 heap[i] = last;                //  use the last item to overwrite the current
	 shift_down(i);
}

int delete_max()
{
  int ret = heap[0];
  delete(0);
  return ret;
}

void insert(int new_data)
{
  if(heap_size > MAX_HEAP_LEN) return;
  heap_size++;
  heap[heap_size -1 ] = new_data;
  shift_up(heap_size-1);
}

int main()
{
	
	int i = 0;
	heap_size = 10;
	
	insert(3);
	insert(7);
	insert(13);
	insert(83);
	insert(23);
	insert(11);
	insert(31);
	insert(12);
	insert(35);

	for(i = 0; i < heap_size; i++)
		printf("%d ",delete_max());

	return 0;
}
