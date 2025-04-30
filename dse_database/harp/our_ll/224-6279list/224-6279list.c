/* Example code for Software Systems at Olin College.

Based on an example from http://www.learn-c.org/en/Linked_lists

Copyright 2014 Allen Downey
License: Creative Commons Attribution-ShareAlike 3.0

*/

#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    int val;
    struct node * next;
} Node;

// Makes a new node
Node *make_node(int val, Node *next) {
    Node *node = malloc(sizeof(Node)); //make memory space for new node
    node->val = val;
    node->next = next;
    return node;
}

// prints a list, input *head points to the first node
void print_list(Node *head) {
    printf("\nprinting the list\n");
    Node *current = head;

    while (current != NULL) { // prints node values until 
        printf("%d\n", current->val);
        current = current->next;
    }
}

//removes the first element from the list, and returns its value
int pop(Node **head) {
    int retval; //this will return the value of the node to be popped
    Node *next_node;
    Node **first = head;
    if (first == NULL) { // if we have no linked elements from head, stop
        return -1;
    }

    next_node = (*first)->next;
    retval = (*first)->val;
    free(*first);
    *first = next_node;

    printf("The val of node we just popped is : %d\n", retval);
    return retval;
}

// Add a new element to the beginning of the list.
void push(Node **head, int val) { //takes a double pointer to a node as well as a int val as input
    // FILL THIS IN!
    //first we get the address of the first node
    //then make a new node pointing to that one
    //*head is the pointer to the first node
    Node *new_first = make_node(val, NULL);
    new_first->next = *head;
    *head = new_first;

}

// Remove the first element with the given value; return the number
// of nodes removed.
//TODO: this might not work if the node to remove is the first node
int remove_by_value(Node **head, int val) {
    // FILL THIS IN!
    // maybe a while loop until val matches the node value
    printf("\nstarting remove_by_value\n");
    Node *current = *head;

    //check if the first node is bad 
    if (current->val == val){
        int val_popped = pop(head);
        printf("the first node matched by val, so we popped it with val=%d/n", val_popped);
        return 0;
    }

    while (val != current->val) {
        printf("current val is :%d\n", current->val);
        if (current->next == NULL){
            printf("val not found\n");
            return -1;
        }
        current = current->next;
        //if we're at the end without finding it
    }
    if (val == current->val){
        printf("we found the value which in our list is : %d\n",current->val);   
        //now to remove this value
        //we need to make the node before this one point to the one after
        //and maybe free the memorey of this node but not essential
        Node *pointer_to_remove = current;
        Node *point_to_next = current->next;
        Node *current = *head;
        while (pointer_to_remove != current->next) { //run this loop until we're one before the one to remove
            current = current->next;
        }
        if (current->next == pointer_to_remove) {
            current->next = point_to_next;
        }
        return 0;
    }

    return 0;

}

// Reverse the elements of the list without allocating new nodes.
void reverse(Node **head) {
    // FILL THIS IN!
    Node *node = *head;
    Node *next, *temp;

    if (node == NULL || node->next == NULL) {
    return;
    }

    next = node->next;
    node->next = NULL;

    while (next != NULL) {
    temp = next->next;
    next->next = node;
    node = next;
    next = temp;
    }
}


int main() {
    Node *test_list = make_node(1, NULL);
    test_list->next = make_node(2, NULL);
    test_list->next->next = make_node(3, NULL);
    test_list->next->next->next = make_node(4, NULL);

    int retval = pop(&test_list);

    
    push(&test_list, retval+10);

    remove_by_value(&test_list, 3);
    remove_by_value(&test_list,7);

    print_list(test_list);

    reverse(&test_list);
    
    print_list(test_list);
}
