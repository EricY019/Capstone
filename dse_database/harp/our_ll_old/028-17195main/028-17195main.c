#include <stdio.h>
#include <stdlib.h>

struct ds {
	struct ds *next;
	int x;
};

#define DATA_SIZE	16

#define HEAD_SIZE	16

struct ds head[HEAD_SIZE];

void pr_head(void)
{
	int i;
	struct ds *p;

	printf("head list:\n");
	for(i = 0; i < HEAD_SIZE; i++) {
		p = head + i;
		while(p) {
			printf("%8d", p->x);
			p = p->next;
		}
		printf("\n");
	}
}

int get_int(void)
{
	return random() & 0xffff;
}

void list_add_tail(int offset, int x)
{
	struct ds *p = malloc(sizeof(*p));
	struct ds *l;

	if(!p) {
		printf("malloc failed\n");
		return;
	}

	for(l = head + offset; l->next; l = l->next)
		;

	p->x = x;
	p->next = NULL;

	l->next = p;
}

void list_del(struct ds *p)
{

}

int main(void)
{
	int i, j;

	for(i = 0; i < HEAD_SIZE; i++) {
		head[i].x = i;
	}

	for(i = 0; i < DATA_SIZE; i++) {
		int x = get_int();
		int j = x & 0xf;
		list_add_tail(j, x);
	}

	for(i = 0; i < HEAD_SIZE; i++) {
		struct ds *p = head + i;
		struct ds *pp;

		for(pp = head->next; pp; pp = pp->next) {
			int mask = (pp->x & 0xf0) >> 4;

			list_del(pp);
			
		}
	}

	pr_head();

	return 0;
}
