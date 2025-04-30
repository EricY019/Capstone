//没有做任何检查，就是实现一个基本的功能！
//1.2就要做出一些检查了！
//use 400M space
//即使最简单的事情，不亲自做一遍，也会错误百出！
//用queue1.0也可以实现对自定义数据的优先队列
//这里先不实现了，有一种就先用！
#define MAX 1000000
#include<stdio.h>
int queue[MAX];
int start=0,end=0;
void push(int element) {
	if (end==MAX) { fprintf(stderr,"不能添加元素了！\n"); }
	else if (end > MAX) { fprintf(stderr,"超过得更多了!\n"); }
	else {
		//想法一用插入法，因为插入前队列是排好的！
		//这是在queue1.0想法下插入！
		int i;
		for(i=start;i<end;i++) {
			if (element>queue[i]) continue;
			else {break;}
		}
		end++;
		int j;
		for(j=end-1;j>i;j--) {
			queue[j]=queue[j-1];

		}
		queue[i]=element;
	}
}
void pop(){
	//end不能为负数！
	//end等于start时整个queue已经是空的了！
	if (start==end) { 
		//这里以错误信息显示比较合适！
		fprintf(stderr,"queue is empty, nothing will be pop!\n");
	} else if (start > end) {
		fprintf(stderr,"end可以走到start的前面，这不可能！\n");
	} else {
		//只简单的处理办法，把队列前面的元素减一就可以！
		start++;
	}
}
int front(){
	return queue[start];
}
int empty(){
	return start==end;
}
int size(){
	return end-start;
}
void print(){
	if (start==end) { 
		//这里以错误信息显示比较合适！
		fprintf(stderr,"queue is empty, nothing will be pop!\n");
		return;
	} else if (start > end) {
		fprintf(stderr,"end可以走到start的前面，这不可能！\n");
		return;
	} else {

		int i;
		for(i=start;i<end;i++) {
			printf(" %d",queue[i]);
		}
		printf("\n");
	}
}


int main() {
	/* 一个队列要实现以下几个功能！
	   There are four main operations on a queue:

	   Push – Adds an element to the back of the queue
	   Pop – Removes the front element from the queue
	   Front – Returns the front element on the queue
	   Empty – Tests if the queue is empty or not
	 */
	push(1); print();
	printf("size = %d\n",size());
	push(2); print();
	printf("size = %d\n",size());
	push(3); print();
	printf("size = %d\n",size());
	pop(); print();
	printf("size = %d\n",size());
	pop(); print();
	printf("size = %d\n",size());
	pop(); print();
	printf("size = %d\n",size());
	pop(); print();
	printf("size = %d\n",size());
	pop(); print();
	printf("size = %d\n",size());
	printf("start=%d end=%d\n",start,end);
	push(4);
	push(9);
	print();
	printf("size = %d\n",size());

	return 0;
}
		
