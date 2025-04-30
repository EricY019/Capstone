#include <stdio.h>
#include <stdlib.h>

struct node{
  int data;
  struct node *prev;
  struct node *next;
};

void traverseLinkedList(struct node *head);
void push(struct node **head, int data);
void deleteNode(struct node **head, struct node *point);

int main(){
  struct node *head = NULL;

  push(&head, 1);
  push(&head, 2);
  push(&head, 3);
  traverseLinkedList(head);

  struct node *point = head;
  while(point->data != 1){
    point = point->next;
  }
  printf("%s %d\n", "Found: ", point->data);
  deleteNode(&head, point);
  printf("%s\n", "After Deletion.");
  traverseLinkedList(head);
}

void deleteNode(struct node **head, struct node *point){
  if(point->next == NULL){
    point->prev->next = NULL;
  }
  else if(point->prev == NULL){
    *head = point->next;
  }
  else{
    struct node *prev = point->prev;
    struct node *next = point->next;

    prev->next = next;
    next->prev = prev;
  }
  free(point);
}

void push(struct node **head, int data){
  struct node *newNode = (struct node *)malloc(sizeof(struct node));

  newNode->data = data;
  newNode->next = (*head);
  newNode->prev = NULL;

  if(*head != NULL){
    (*head)->prev = newNode;
  }

  *head = newNode;
}

void traverseLinkedList(struct node *head){
  if(head == NULL){
    return;
  }

  printf("Element value= %d \n", head->data);
  traverseLinkedList(head->next);
}
