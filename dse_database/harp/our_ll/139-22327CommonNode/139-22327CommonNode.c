#include <stdio.h>
#include <stdlib.h>
struct node 
{
	int data;
	int status;
	struct node *next;
};
 
void checkcommonnode(struct node *h1, struct node *h2)
{
	int flag=0;
	while (h1!=NULL)
	{
		h1->status=1;
		h1=h1->next;
	}
 
	while(h2!=NULL)
	{
		if(h2->status==1)
		{
			flag=1;
			printf("Common node found\n");
		    printf("%d\n",h2->data);
		    return;
		}
		h2 = h2->next;
	}
	if(flag==0)
	printf("Common node NOT found\n");
}
 
 
 
int main(void) 
{
	struct node *head1 = (struct node*)malloc(sizeof(struct node));
	head1->data = 5;
	head1->status=0;
	struct node *head2 = (struct node*)malloc(sizeof(struct node));
	head2->data = 3;
	head2->status=0;
	struct node *new_node1 = (struct node*)malloc(sizeof(struct node));
	new_node1->data = 10;
	new_node1->status=0;
	head1->next = new_node1;
	struct node *new_node2 = (struct node*)malloc(sizeof(struct node));
	new_node2->data = 15;
	new_node2->status=0;
	new_node2->next = NULL;
	head1->next->next = new_node2;
	head2->next=new_node2;
	checkcommonnode(head1,head2);
	head2->next=NULL;
	checkcommonnode(head1,head2);
 
    return 0;
}
 
