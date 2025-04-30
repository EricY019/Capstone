#include <stdio.h>
#include <stdlib.h>

typedef struct _node_t{
	int val;
	struct _node_t *next;
}node_t;

void print(node_t *list)
{
	node_t *n = NULL;
	for (n = list ; n != NULL ; n=n->next)
	{
		printf("%d ",n->val);
	}
	printf("\n");
}

node_t *reverse(node_t *list)
{
	node_t *n = NULL;
	node_t *next = list;
	node_t *prev = NULL;
	do{
		n = next;
		next = n->next;
		n->next = prev;
		prev = n;
	}while(next != NULL);

	return n;
}

int main(int argc, char **argv)
{
	//
	// prepare data
	//
	node_t* n1 = (node_t*)malloc(sizeof(node_t));
	n1->val = 1;
	n1->next = NULL;

	node_t* n2 = (node_t*)malloc(sizeof(node_t));
	n2->val = 2;
	n2->next = NULL;
	n1->next = n2;

	node_t* n3 = (node_t*)malloc(sizeof(node_t));
	n3->val = 3;
	n3->next = NULL;
	n2->next = n3;

	node_t* n4 = (node_t*)malloc(sizeof(node_t));
	n4->val = 4;
	n4->next = NULL;
	n3->next = n4;

	print(n1);

	n1 = reverse(n1);

	print(n1);


	return 0;
}