#include <stdio.h>
#include <stdlib.h>


typedef struct node{
	int data;
	struct node* left;
	struct node* right;
} node;

node* head;

node* create(int data){
	node* temp = (node* ) malloc(sizeof(node));
	temp->data = data;
	temp->left = NULL;
	temp->right = NULL;
	return temp;
}

node* insert(node* current, int data){

	if(head == NULL){
		node* temp;
		temp = create(data);
		head = temp;
		return temp;

	}
	else{
		if(current == NULL){
			node* temp;
			temp = create(data);
			return temp;
		}

		if(data <= current->data){

			current->left = insert(current->left,data);
		}
		else if ( data > current->data){

			current->right = insert(current->right,data);
		}

	}
	return current;

}


void print_preorder_all(node* temp){
	if(temp != NULL){

		printf("data %d ",temp->data);

		if(temp->left != NULL){
		printf("left child %d ",temp->left->data);}
		else {
			printf("left child NULL ");
		}
		if(temp->right != NULL){
		printf("right child %d \n",temp->right->data);}
		else {
			printf("right child NULL \n");
		}
		
		print_preorder_all(temp->left);
		print_preorder_all(temp->right);
	}
	return;
}

/* Height of a node is the no.of edges in the longest path from node to leaf */

int find_height (node* temp){
	if (temp == NULL){
		return -1;
	}

	int left_h = find_height(temp->left);
	int right_h = find_height(temp->right);

	if(left_h > right_h){
		return left_h+1;
	}
	else return right_h+1;
}

int height_node(int n){
	node* temp;
	temp =head;
	int found_flag = 0;
	int count = 0;

	
	while(temp->data != n && (temp->left != NULL || temp->right!= NULL)) {
		if(n < temp->data){
			if(temp->left!=NULL){
	
				temp = temp->left;
	
			}
		}
		else {
			if(temp->right!=NULL){

			temp = temp->right;

			}
		}

		}
	
	if (temp != NULL && temp->data == n) {
		found_flag = 1;
		
	}
	else {
		printf("*******Node not found*******\n");
		return -1;
	}

	while (found_flag){
		count = find_height(temp);
		return count;
	}
	return -1;
	}

/* Depth of a node is the no.of edges in the path from root to node */


int depth_node( int n){
	node* temp;
	temp =head;
	int found_flag = 0;
	int count = 0;


	while (temp->data != n && (temp->left != NULL || temp->right!= NULL)) {
		
		if(n < temp->data){
			if(temp->left!=NULL){
				temp = temp->left;
				count++;
			}
		}
		else {
			if(temp->right!=NULL){
			temp = temp->right;
			count++;	
			}
		}
	}
	
	if (temp != NULL && temp->data == n) {
		found_flag = 1;
	}
	else {
		printf("*******Node not found*******\n");
		return -1;
	}

	while (found_flag){
	return count;
	}
	
	return -1;
}

int main(){
	head = NULL;
	node* temp;
	
	int A[13] = {11, 6, 8, 19, 4, 13, 5, 17, 43, 49, 16, 31, 32};
	int i;
	for(i =0 ; i<13 ; i ++){
		temp = insert(head,A[i]);
	}
	
	
	printf("all info\n");
	print_preorder_all(head);
	printf("\n");
	
	printf("level 0 / root node\n");
	printf("The height_node of 11 is %d \n",height_node(11));
	printf("The depth_node of 11 is %d \n",depth_node(11));


	printf("level 1\n");
	printf("The height_node of 19 is %d \n",height_node(19));
	printf("The depth_node of 19 is %d \n",depth_node(19));


	printf("level 2\n");
	printf("The height_node of 8 is %d \n",height_node(8));
	printf("The depth_node of 8 is %d \n",depth_node(8));

	
	printf("level 3\n");
	printf("The height_node of 5 is %d \n",height_node(5));
	printf("The depth_node of 5 is %d \n",depth_node(5));


	printf("level 4\n");
	printf("The height_node of 32 is %d \n",height_node(32));
	printf("The depth_node of 32 is %d \n",depth_node(32));


	printf("level 3\n");
	printf("The height_node of 32 is %d \n",height_node(31));
	printf("The depth_node of 32 is %d \n",depth_node(31));
	return 0;
}