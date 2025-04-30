#include<stdio.h>
#include<stdlib.h>

struct node
{
	int value;
	struct node *link;
} *head, *top, *ptr,*node;
int i = 0;

void init()
{
	top = NULL;
}

void insert(int value)
{
	node = (struct node*)malloc(sizeof(struct node));
	node->value = value;
	node->link = NULL;
	if(top == NULL)
	{
		top = node;
		head = top;
	}
	else
	{
		top->link = node;
		node->link = head;
		top = node;
	}
}

void display()
{
	ptr = head;
	do
	{
		printf("this node contains: %d\n", ptr->value);
		ptr = ptr->link;
	}while(ptr != head);
	printf("End of list");
}

int main()
{
	init();
	insert(1);
	insert(2);
	insert(3);
	insert(4);
	insert(5);
	insert(6);
	display();
	return 0;
}

		
		