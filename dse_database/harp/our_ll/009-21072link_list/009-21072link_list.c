#include <stdio.h>
#include <stdlib.h>

#if 1
#define DBG(x , ...) printf("[%s:%s(%d)]::"x,__FILE__,__FUNCTION__,__LINE__,##__VA_ARGS__) 
#else
#define DBG(x)
#endif

typedef struct _node {
	int mData;
	struct _node *mPrev;
	struct _node *mNext;
}Node,*PNode;

static PNode gListHead;
static PNode gListTail;
static int mListLen;

void push_back(int data) {
	PNode pNode = (PNode)calloc(1,sizeof(Node));
	if(pNode) {
		pNode->mData = data;
		if(NULL == gListHead && gListHead == gListTail) {
			gListHead = gListTail = pNode;
		} else {
			gListTail->mNext = pNode;
			gListTail = pNode;
		}
		pNode = NULL;
	} else {
		DBG("calloc");
	}
}

void push_front(int data) {
	PNode pNode = (PNode)calloc(1, sizeof(Node));
	if(pNode) {
		pNode->mData = data;
		if(NULL == gListHead && gListHead == gListTail) {
			gListHead = gListTail = pNode;
		} else {
			pNode->mNext = gListHead;
			gListHead = pNode;
		}
	} else {
		DBG("calloc");
	}
}

void delete(int data) {
	PNode pPrev,pCurr;
	pCurr = gListHead;
	while(pCurr) {
		if(pCurr->mData == data) {
			if(pCurr == gListHead) {
				gListHead = pCurr->mNext;
			} else {
				pPrev->mNext = pCurr->mNext;
			}
			free(pCurr);
			return;
		}
		pPrev = pCurr;
		pCurr = pCurr->mNext;
	}
}

void update(int old, int new) {
	PNode pNode = gListHead;
	while(pNode) {
		if(pNode->mData == old) {
			pNode->mData = new;
			return;
		}
		pNode = pNode->mNext;
	}
}

void traverse() {
	PNode pNode = gListHead;
	while(pNode) {
		DBG("mData=%d\n",pNode->mData);
		pNode = pNode->mNext;
	}
}

void clear() {
	PNode pTemp;
	while(gListHead) {
		pTemp = gListHead;
		gListHead = gListHead->mNext;
		free(pTemp);
		pTemp = NULL;
	}
}

int main() {

	int i;
	for(i = 0; i < 20; i++) {
		push_back(i);
	}

	for(i= -1; i > -20; i--) {
		push_front(i);
	}

	delete(10);
	delete(-10);

	update(0,'a');

	traverse();
	clear();

	return 0;
}
