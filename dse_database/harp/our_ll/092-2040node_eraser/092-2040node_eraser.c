#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define N 10


struct node {
	struct node *next;
	int data;
};

typedef struct node Node;

void eraseNode(Node* n){
	Node *a;
	a = n->next;
	n->data = a->data;
	n->next = a->next;
	free(a);
}


int main(){
	Node *root = (Node*) malloc(sizeof(Node));

	Node *t = root;
	int i;
	srand(time(NULL));

	//ejemplo

	t->data = rand() % 10;
	for(i = 0; i < N - 1 ; i++){
		printf("%d\n", t->data);
		t->next = (Node*) malloc(sizeof(Node));
		t = t->next;
		t->data = rand() % 10;
	}
	printf("%d\n", t->data);

	putchar('\n');
	t = root;

	int counter = 0;

	while(t){
		counter++;
		if(counter == 3){
			eraseNode(t);
		}
		t = t->next;
	}

	t = root;
	Node *clear;
	for(i = 0; i < N - 1 ; i++){
		clear = t;
		printf("%d\n", t->data);
		if(t->next){
			t = t->next;
		}
		free(clear);
	}

}