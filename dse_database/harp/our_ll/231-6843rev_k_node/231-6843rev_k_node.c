#include<stdio.h>
#include<stdlib.h>

/* Link list node */
struct node
{
	int data;
	struct node* next;
};

struct node *reverse (struct node * head, int k){
	struct node * curr = head;
	struct node * prev = NULL;
	struct node * next = NULL;

	int count = 0;

	while (count < k && curr != NULL) {

		next = curr->next;
		curr->next = prev;
		prev = curr;
		curr = next;
		count++;
	}

	if (next != NULL){
		curr->next = reverse (next, k);

	}

	return prev;
}

/* UTILITY FUNCTIONS */
/* Function to push a node */
void push(struct node** head_ref, int new_data)
{
	/* allocate node */
	struct node* new_node =
		(struct node*) malloc(sizeof(struct node));

	/* put in the data  */
	new_node->data  = new_data;

	/* link the old list off the new node */
	new_node->next = (*head_ref);    

	/* move the head to point to the new node */
	(*head_ref)    = new_node;
}

/* Function to print linked list */
void printList(struct node *node)
{
	while (node != NULL)
	{
		printf("%d  ", node->data);
		node = node->next;
	}
}    

/* Drier program to test above function*/
int main(void)
{
	/* Start with the empty list */
	struct node* head = NULL;

	/* Created Linked list is 1->2->3->4->5->6->7->8->9 */
	push(&head, 9);
	push(&head, 8);
	push(&head, 7);
	push(&head, 6);
	push(&head, 5);
	push(&head, 4);
	push(&head, 3);
	push(&head, 2);
	push(&head, 1);           

	printf("\nGiven linked list \n");
	printList(head);
	head = reverse(head, 3);

	printf("\nReversed Linked list \n");
	printList(head);

	return(0);
}
