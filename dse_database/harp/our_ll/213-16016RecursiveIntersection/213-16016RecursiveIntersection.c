#include <stdio.h>
#include <stdlib.h>
struct node
{
	int data;
	struct node *next;
};
struct node *head3 = NULL;
 
void insert(struct node **head_ref, int new_data)
 {
 	struct node *new_node = (struct node*)malloc(sizeof(struct node));
 	struct node *last= *head_ref;
 
 	new_node->data = new_data;
 	new_node->next = NULL;
 
 	if(*head_ref == NULL)
 	{
 		*head_ref = new_node;
 		return;
 	}
    while (last->next != NULL)
   		last = last->next;
 
    last->next = new_node;
    return;
 }
 
void display (struct node *node)
 {
 	while(node!=NULL)
 	 {
 	 	printf("%d  ", node-> data);
 	 	node= node->next;
 	 }
 	 printf("\n");
 }
 
 
struct node* intersection(struct node *head1, struct node *head2)
{   
 
	int match;
	if(head1==NULL || head2==NULL)
	return NULL;
 
	if(head1->data < head2->data)
	intersection(head1->next,head2);
 
	if(head1->data > head2->data)
	intersection(head1,head2->next);
 
	if(head1->data == head2->data)
	{
		match = head1->data;
		printf("%d\n",match);
		insert(&head3,match);
		intersection(head1->next,head2->next);
	}
 
 
    return head3;
}
 
int main(void) 
{
	struct node *head1 = NULL;
	struct node *head2 = NULL;
 
 
	int count1,count2,count;
 
    insert(&head1, 5);
    insert(&head1, 10);
    insert(&head1, 15);
    insert(&head2, 6);
    insert(&head2, 10);
    insert(&head2, 15);
    insert(&head2, 25);
    head3 = intersection(head1, head2);
    display(head1);
    display(head2);
    display(head3);
 
	return 0;
}
