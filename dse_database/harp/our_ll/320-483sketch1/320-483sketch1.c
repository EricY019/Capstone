#include <stdlib.h>
#include <stdio.h>

struct Node
{
  short next;
  int value;
};

#define PTR(b, o) (b)+(o)

#define LISTSIZE 32768

void
traverse(struct Node * list)
{
  struct Node * elem;
  int i;
  int sum;

  for( i= 0; i < 10000; i++ )
    {
      sum= 0;
      elem= list;
      while( elem->next > 0 )
	{
	  sum++;
	  elem= PTR(list, elem->next);
	}
    }
}  

int
main( int argc, char ** argv )
{
  int i;
  struct Node * list= calloc( LISTSIZE, sizeof(struct Node));
  struct Node * elem;
  int sum= 0;

  for( i= 0; i < LISTSIZE; i++ )
    {
      elem= list+i;
      elem->value= i;
      elem->next= (elem+1)-list;
    }

  traverse(list);
}
