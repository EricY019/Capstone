#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

typedef struct node Node;
struct node {
	int depth;
	int payload;
	Node* left;
	Node* right;
};

Node* createNode(int val) {
	Node* new    = malloc(sizeof(Node));
	new->payload = val;
	new->left    = NULL;
	new->right   = NULL;
	return new;
}

// Returns a pointer to the node inserted into `root'.
// If the value already exists in the BST, a pointer
// to preexisting node is returned.
Node* insert(Node* root, int val) {
	if (root == NULL) { 
		return createNode(val); 
	} 

	// Check for duplicates.
	int pivot = root->payload;
	if (val == pivot) {
		return root;
	}

	// Insert node in the correct place.
	Node* newNode = NULL;
	if (val <= pivot) {
		if (root->left == NULL) {
			newNode = createNode(val);
			root->left = newNode;
		} else {
			insert(root->left, val);
		}
	} else {
		if (root->right == NULL) {
			newNode = createNode(val);
			root->right = newNode;
		} else {
			insert(root->right, val);
		}
	}
	return newNode;
}

// Prints the tree with in-order traversal.
void printTreeGo(Node* root) {
	if (root == NULL) {
		return;
	}
	if (root->left != NULL) {
		printTreeGo(root->left);
	}
	printf("%d at depth %d, ", root->payload, root->depth);
	if (root->right != NULL) {
		printTreeGo(root->right);
	}
}

void printTree(Node* root) {
	printTreeGo(root);
	printf("\n");
}

void freeTree(Node* root) {
	if (root == NULL) {
		return;
	}

	freeTree(root->left);
	freeTree(root->right);
	free(root);
}

int height(Node* root) {
	if (root == NULL) {
		return -1;
	}

	int leftH  = height(root->left);
	int rightH = height(root->right);
	if (leftH > rightH) {
		return 1 + leftH;
	} else {
		return 1 + rightH;
	}
}

Node* createExampleTree(void) {
	Node* root = insert(NULL, 5);
	insert(root, 10);
	insert(root, 2);
	insert(root, 7);
	insert(root, 13);
	insert(root, 8);
	return root;
}

void calcDepthsGo(Node* root, int depth) {
	if (root == NULL) {
		return;
	}
	root->depth = depth;
	if (root->left)  {
		calcDepthsGo(root->left, depth+1);
	}
	if (root->right) {
		calcDepthsGo(root->right, depth+1);
	}
}

void calcDepths(Node* root) {
	calcDepthsGo(root, 0);
}

int main(void) {
	Node* root = createExampleTree();
	printf("Trees height: %d\n", height(root));
	calcDepths(root);
	printTree(root);
	freeTree(root);
	root = NULL;
}
