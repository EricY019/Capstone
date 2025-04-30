#include <stdio.h>
#include <stdlib.h>

struct node{
  int data;
  struct node *prev;
  struct node *next;
};

void traverseLinkedList(struct node *head);
void push(struct node **head, int data);
void insertAfter(struct node *prev, int data);
void insertLast(struct node **head, int data);
void insertBefore(struct node **head, struct node *next, int data);

int main(){
  struct node *head = NULL;

  push(&head, 1);
  push(&head, 2);
  push(&head, 3);

  struct node *point = head;
  while(point->data != 3){
    point = point->next;
  }
  printf("%s %d\n", "Found: ", point->data);
  insertAfter(point, 5);
  insertBefore(&head, point, 7);
  traverseLinkedList(head);
  insertLast(&head, 10);
  printf("%s\n", "After inserting at last.");
  traverseLinkedList(head);
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

void insertAfter(struct node *prev, int data){
  if(prev == NULL){
    return;
  }

  struct node *newNode = (struct node *)malloc(sizeof(struct node));
  newNode->data = data;
  newNode->next = prev->next;
  newNode->prev = prev;

  prev->next = newNode;
  struct node *nextNode = prev->next;
  nextNode->prev = newNode;
}

void insertBefore(struct node **head, struct node *next, int data){
  if(next == NULL){
    return;
  }

  struct node *newNode = (struct node *)malloc(sizeof(struct node));
  newNode->data = data;
  newNode->next = next;
  newNode->prev = next->prev;

  struct node *prevNode = next->prev;
  if(prevNode != NULL){
    prevNode->next = newNode;
  }
  else{
    *head = newNode;
  }

  next->prev = newNode;
}

void insertLast(struct node **head, int data){
  struct node *newNode = (struct node *)malloc(sizeof(struct node));
  newNode->data = data;
  newNode->next = NULL;

  if(*head == NULL){
    newNode->prev = NULL;
    *head = newNode;
    return;
  }

  struct node *current = *head;
  while(current->next != NULL){
    current = current->next;
  }

  newNode->prev = current;
  current->next = newNode;
}

void traverseLinkedList(struct node *head){
  if(head == NULL){
    return;
  }

  printf("Element value= %d \n", head->data);
  traverseLinkedList(head->next);
}
