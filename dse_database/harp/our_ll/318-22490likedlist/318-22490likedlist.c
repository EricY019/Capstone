#include <stdio.h>
#include <stdlib.h>
typedef struct Node{
	int val;
	struct Node* next;
}Node;

Node *head = NULL;

void insertToTail(int val){
	Node* temp = (Node*)malloc(sizeof(Node));
	temp->val = val;
	temp->next = NULL;
	if(head == NULL){
		temp->next = head;
		head = temp;
		return;
	}

	Node *temp2 = head;
	while(temp2->next != NULL)
		temp2 = temp2->next;
	temp->next = NULL;
	temp2->next = temp;
}

void insertToFront(int val){
	Node* temp = (Node*)malloc(sizeof(Node));
	temp->val = val;
	temp->next = head;
	head = temp;
}

void deleteN(int n){
	Node *temp = head;
	if(n == 1){
		head = head->next;
		free(temp);
		return;
	}
	int i;
	for(i = 0;i < n-2;i++){
		temp = temp->next;
	}

	Node *temp2 = temp->next;
	temp->next = temp2->next;
	free(temp2);
}
void clear(){
	while(head != NULL){
		Node *temp = head;
		head = head->next;
		free(temp);
	}
}
void Print(){
	Node *temp = head;
	if(temp == NULL){
		printf("no member in this list\n");
		return;
	}
	while(temp != NULL){
		printf("%d ", temp->val);
		temp = temp->next;
	}
	printf("\n");
}

void reverseByIter(){
	Node *current,*next,*prev;
	current = head;
	prev = NULL;
	while(current != NULL){
		next = current->next;
		current->next = prev;
		prev = current;
		current = next;
	}
	head = prev;
}

void reverseByRecu(Node *p){
	if(p == NULL || p->next == NULL){
		head = p;
		return;
	}
	reverseByRecu(p->next);
	p->next->next = p;
	p->next = NULL;
}

Node *reverseByRecu_2(Node *p){
	if(p == NULL || p->next == NULL){
		return p;
	}

	Node* temp = reverseByRecu_2(p->next);
	p->next->next = p;
	p->next = NULL;
	return temp;
}

int main(){
	insertToFront(2);
	insertToFront(100);
	insertToFront(234);
	insertToFront(32);
	insertToFront(50);
	insertToFront(99);
	Print();
	reverseByRecu(head);
	Print();
	reverseByRecu_2(head);
	Print();
}
