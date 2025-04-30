#include <stdio.h>
#include <stdlib.h>

struct sl_node {
	int value;
	struct sl_node *next;
};

struct sl_node * construct_sl(int n)
{
	int i;
	struct sl_node *head = NULL;
	struct sl_node *p = NULL;
	struct sl_node *p1 = NULL;

	p = (struct sl_node *)malloc(sizeof(struct sl_node));
	p->value = 0;
	p->next = NULL;
	
	head = p;
	p1 = p;

	for (i = 1; i < n; i++) {
		p = (struct sl_node *)malloc(sizeof(struct sl_node));
		p->value = i;
		p->next = NULL;
		
		p1->next = p;
		p1 = p;
	}

	return head;
}
void traverse_sl(struct sl_node *head)
{
	struct sl_node *p = head;
	int cnt = 0;
	printf("traversal ");
	//while (p->next) {
	while (p) {
		printf("%d ", p->value);
		p = p->next;
		cnt++;
	}
	printf(", total %d nodes traversed\n", cnt);
}

int del_node_p(struct sl_node *phead, int vtd)
{
	struct sl_node *prev = NULL;
	struct sl_node *p = phead;
	while (p != NULL) {
		if (p->value != vtd) { //not del
			prev = p;
			p = p -> next;
			continue;
		} else if (p->next != NULL) { //del not end
			if (p == phead) { //real head
			/* fake delete, just reconstruct the node*/
				p = p->next; 
				phead->value = phead->next->value;
				phead->next = phead->next->next; 
				free(p);
				return 0;
			} else { // not end not head
				prev->next = p->next;
				free(p);
				return 0;
			}
		} else { //del end
		/* without return new head,  single pointer cannot
		 * handle single node list del 
		 */
			if (prev != NULL) {
				prev->next = NULL;
			}
			free(p);
			p = NULL;
			return 0;
		}
	}
	return 1;
} // 27 lines

struct sl_node * del_node_p_return(struct sl_node *phead, int vtd)
{
	struct sl_node *prev = NULL;
	struct sl_node *p = phead;
	struct sl_node *p1 = NULL;
	while (p != NULL) {
		if (p->value != vtd) { //not del
			prev = p;
			p = p -> next;
			continue;
		} else {
			if (p->next != NULL) { //del not end
				if (p == phead) { //real head
					p1 = phead;
					phead = phead->next; 
					p = p->next;
					free(p1);
				} else { // not end not head
					prev->next = p->next;
					p1 = p;
					p = p->next;
					free(p1);
				}
			} else { //del end
				if (p == phead) {
					p1 = p;
					phead = NULL;
					p = NULL;
					free(p1);
				} else {
					prev->next = NULL;
					p1 = p;
					p = NULL;
					free(p1);
				}
			}
		/* NOTES: look back, del end or not doesnot matter
		 * they go same steps, so inprved next function
		 * and also the real head or not
		 */
		}
	}
	
}  // 36 lines

struct sl_node * del_node_p_return_iprv(struct sl_node *phead, int vtd)
{
	struct sl_node *prev = NULL;
	struct sl_node *p = phead;
	struct sl_node *p1 = NULL;
	while (p != NULL) {
		if (p->value != vtd) { //not del
			prev = p;
		} else {
			p1 = p;
			if (p == phead) { //real head
				phead = phead->next; 
			} else { // not end not head
				prev->next = p->next;
			}
			free(p1);
		}
		p = p->next;
	}
	return phead;
} // 17 lines

struct sl_node * del_node_pp(struct sl_node **phead, int vtd)
{
	struct sl_node *prev = NULL;
	struct sl_node *p = *phead;
	struct sl_node *p1 = NULL;
	while (p != NULL) {
		if (p->value != vtd) { //not del
			prev = p;
		} else {
			p1 = p;
			if (p == *phead) { //real head
				*phead = p->next; 
			} else { // not end not head
				prev->next = p->next;
			}
			free(p1);
		}
		p = p->next;
	}
	return *phead;
} // 17 lines

/* which Linus called core low-level code
 * use pointer-to-pointer manage pointers
 * see single-list-pp.xls for pointer value change
 */
struct sl_node * del_node_pp_inprv(struct sl_node **phead, int vtd)
{
	struct sl_node **p = phead;
	while (*p != NULL) {
		struct sl_node *entry = *p;
		if ((*p)->value != vtd) { // not del
			p = &entry->next; // when go forward other than deleting,
					  // we modify the pp pointer, get it to
					  // the entry's next's addr, this donot
					  // modify the original list
		} else {
			*p = entry->next; // when deleting other than going fwd,
			free(entry);	  // we modify the *p pointer, get it to
					  // the entry's next, this also modify
					  // the original list
		}
	}
	return *phead;
} // 11 lines...

int main(int argc, char **argv)
{
	int ret, i = 0, n = 9;
	struct sl_node * head = NULL;

	if (argc != 0) {
		if (argv[1] != NULL)
			n = atoi(argv[1]);
		if (argv[2] != NULL)
			i = atoi(argv[2]);
	}

	head = construct_sl(n);
	traverse_sl(head);
	//ret = del_node_p(head, i);
	//ret = del_node_pp(&head, i);
	//head = del_node_p_return(head, i);
	//head = del_node_p_return_iprv(head, i);
	//head = del_node_pp(&head, i);
	head = del_node_pp_inprv(&head, i);
	printf("deleted %d\n", i);
	traverse_sl(head);

	return 0;
}
