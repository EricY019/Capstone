#include <stdio.h>

struct point{
    int x;
    int y;
    struct point * next;
};

void printPoints(struct point *);
void appendNode(struct point *, struct point *);

int main(void) {
    
	struct point pt1 = {1, 2, NULL};
    struct point pt2 = {-2, 3, NULL};
    struct point pt3 = {5, -4, NULL};
    struct point pt4 = {9, -9, NULL};
    struct point * head, * tail;
    
    head = &pt1;
    pt1.next = &pt2;
    pt2.next = &pt3;
    
    appendNode(&pt3, &pt4);

    printPoints(head);
    
	return 0;
}

void appendNode(struct point *src, struct point *dst) {
    (*src).next = dst;
}

void printPoints(struct point *head) {
    struct point *tail;

    tail = head;

    while (tail != NULL) {
		printf("(%d, %d)\n", (*tail).x, (*tail).y);
        tail = (*tail).next;
    }
}
