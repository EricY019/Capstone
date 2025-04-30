
#include <stdio.h>
#include <stdlib.h>

//#define DEBUG
#define DEBUG_LEVEL 3

struct ListNode {
     int val;
     struct ListNode *next;
};


void printList(struct ListNode * head) {
	while (head) {
#if (DEBUG_LEVEL == 1)
		printf("[%d]¡¾%2d¡¿->", head, head->val);
#else
		printf("[%d]->", head->val);
#endif
		head = head->next;
	}
	printf("\n");
}


struct ListNode *reverseBetween(struct ListNode *head, int m, int n) {
    struct ListNode *p, *pa, *pb, *ph;
	struct ListNode *prev, *next, *h;
	int len = n-m+1;
	int i = 0;
	int sFlag = 0;

	p = head;
	if (m == 1) {
		sFlag = 1;
		pa = head;
	} else {		
		while (m>=3) {p = p->next; m--;}
		ph = p;
		pa = p->next;
	}

	p  = head;
	n  = n-1;
	while (n--) {p = p->next;}
	pb = p;

#ifdef DEBUG
#if (DEBUG_LEVEL == 1)
    printf("pa - %d %d\npb - %d %d\n", pa, pa->val, pb, pb->val);
#endif
#endif

	next = pa->next;
	prev = pb->next;//prev = NULL;
	p    = pa;

	while (len--) {
		i++;
		next = p->next;
		h	 = p;
		h->next = prev;
		prev = p;
		p    = next;
	}

    if (sFlag) {head = h;}
	else {ph->next = h;}

#ifdef DEBUG
#if (DEBUG_LEVEL == 2)
	printList(h);
	printList(head);
#endif
#endif

	return head;
}

int val[5] = {1,2,3,4,5};
struct ListNode *head;


void initGlobalList() {
	int i;
	struct ListNode *p;

	head = malloc(sizeof(struct ListNode));
	p	 = head;

	for (i = 0; i < 5; i++) {
		p->val = val[i];
		if (i != 4)
			p->next = malloc(sizeof(struct ListNode));
		else
			p->next = NULL;
		p = p->next;
	}	
}

int main()
{
	/*
	int val[5] = {1,2,3,4,5};
	struct ListNode *head = malloc(sizeof(struct ListNode));
	struct ListNode *p = head;
	int i;

	for (i = 0; i < 5; i++) {
		p->val = val[i];
		if (i != 4)
			p->next = malloc(sizeof(struct ListNode));
		else
			p->next = NULL;
		p = p->next;
	}
	printList(head);

	reverseBetween(head, 2, 4);

	printList(head);
*/
	initGlobalList();
	head = reverseBetween(head, 1, 3);
	printList(head);

	initGlobalList();
	head = reverseBetween(head, 2, 4);
	printList(head);

	initGlobalList();
	head = reverseBetween(head, 3, 5);
	printList(head);

	initGlobalList();
	head = reverseBetween(head, 1, 5);
	printList(head);

	return 0;
}