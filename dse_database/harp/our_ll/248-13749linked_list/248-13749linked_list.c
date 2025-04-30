#include <stdio.h>
#include <stdlib.h>

/**
 * List Node Struct.
 * Contains a data and a pointer to the next node in the list.
 */
struct list_node {
    int data;
    struct list_node * next;
};

// Type definition of a node
typedef struct list_node node;

int main(int argc, const char *argv[])
{
    node *curr, *head;
    int i;

    head = NULL;

    // create the list. add a new node for each insert
    for (int i = 0; i < 10; i++) {
        curr = (node *)malloc(sizeof(node));
        curr->data = i;
        curr->next = head;
        head = curr;
    }

    curr = head;

    // iterate though the list, print each element.
    while(curr) {
        printf("%d\n", curr->data);
        curr = curr->next;
    }

    // all good.
    return 0;
}
