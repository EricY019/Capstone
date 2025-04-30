/**
Description: C语言指针实现链表
Author: FAN
Date: 2014/4/19
Blog: thefrp.sinaapp.com
ps: 在vs2012正常运行
*/

#include<stdio.h>
#include<stdlib.h>

typedef int ListItem;
typedef struct node *link;
typedef struct node
{
	ListItem element;
	link next;
}Node;


typedef struct llist *List;
typedef struct llist
{
	link first;
}Llist;

link NewNode();//生成新节点

List ListInit();
int ListEmpty(List L);
int ListLength(List L);
ListItem ListRetrieve(int k,List L);
int ListLocate(ListItem x,List L);
void ListInsert(int k,ListItem x,List L);
ListItem ListDelete(int k,List L);
void PrintList(List L);

void Error(char *ch);
void ItemShow(ListItem li);

int main()
{
	int size = 15;
	int i ;
	List L = ListInit();
	for(i=0;i<size;i++)
		ListInsert(i,i+3,L);
	printf("打印全部元素：\n");
	PrintList(L);
	printf("显示第五个元素：");
	ItemShow(ListRetrieve(5,L));
	printf("删除第五个元素：%d\n",ListDelete(5,L));
	printf("打印全部元素：\n");
	PrintList(L);

	return 0;
}

void Error(char *ch)
{
	printf("%s\n",ch );
}

void ItemShow(ListItem li)
{
	printf("%d\n",li);
}
link NewNode()
{
	link p;
	if((p=(link)malloc(sizeof (Node)))==0)
		Error("Exhausted memory");
	else
		return p;
}

List ListInit()
{
	List L = (List)malloc(sizeof *L);
	L->first = 0;
	return L;
}

int ListEmpty(List L)
{
	return L->first == 0;
}

int ListLength(List L)
{
	int len = 0;
	link p;
	p = L->first;
	while (p)
	{
		len ++;
		p = p->next;
	}
	return len;
}

ListItem ListRetrieve(int k,List L)
{
	if (k<1)
		Error("out of bounds");
	int i;
	link p;
	p = L->first;
	i = 1;
	while(i<k && p)
	{
		p = p->next;
		i ++;
	}
	return p->element;
}

int ListLocate(ListItem x,List L)
{
	int i = 1;
	link p;
	p = L->first;
	while(p&&p->element!=x)
	{
		p = p->next;
		i++;
	}
	return i;
}


void ListInsert(int k,ListItem x,List L)
{
	if(k<0)
		Error("out of bounds");
	link p,y;
	int i;
	p = L->first;
	for(i = 1;i <k&&p;i++)
		p = p->next;
	y = NewNode();
	y->element = x;
	if(k)
	{
		y->next = p->next;
		p->next = y;
	}
	else
	{
		y->next = L->first;
		L->first = y;
	}
}

ListItem ListDelete(int k, List L)
{
	if (k<1||!L->first)
		Error("out of bounds");
	link p,q;
	ListItem x;
	int i;
	p=L->first;
	if(k==1)
		L->first = p->next;
	else
	{
		q = L->first;
		for(i = 1;i<k-1&&q;i++)
			q = q->next;
		p = q->next;
		q->next = p->next;
	}
	x = p->element;
	free(p);
	return x;
}

void PrintList(List L)
{
	link p;
	for(p=L->first;p;p=p->next)
		ItemShow(p->element);
}
