/*
* Êý¾Ý½á¹¹CÓïÑÔ°æ ¿ìËÙÅÅÐò
* P272-P276
* ÈÕÆÚ£º2012-08-29
*/
#include<stdio.h>
#include<stdlib.h>

// ¼ÇÂ¼ÀàÐÍ
typedef int KeyType;//¶¨Òå¹Ø¼ü×ÖÀàÐÍÎªÕûÐÍ
typedef int InfoType;//¶¨ÒåÆäËûÊý¾ÝÏîµÄÀàÐÍ

typedef struct{
	KeyType key;//¹Ø¼ü×ÖÏî
	InfoType otherinfo;//ÆäËûÊý¾ÝÏî
}RedType;

#define MAXSIZE 20 //Ò»¸öÓÃ×÷Ê¾ÀýµÄÐ¡Ë³Ðò±íµÄ×î´ó³¤¶È

// Ë³Ðò±íÀàÐÍ
typedef struct{
	RedType r[MAXSIZE+1];//r[0]ÏÐÖÃ»òÓÃ×÷ÉÚ±øµ¥Ôª
	int length;//Ë³Ðò±í³¤¶È
}SqList;

// ´òÓ¡Ë³Ðò±í
void print(SqList L){
	int i;
	for(i=1;i<=L.length;i++){
		printf("(%d, %d)", L.r[i].key, L.r[i].otherinfo);
	}
	printf("\n\n");
}

// Ëã·¨10.6 P274
// ½»»»Ë³Ðò±íLÖÐ×Ó±íL.r[low..high]µÄ¼ÇÂ¼£¬Ê¹ÊàÖá¼ÇÂ¼µ½Î»£¬
// ²¢·µ»ØÆäËùÔÚÎ»ÖÃ£¬´ËÊ±ÔÚËüÖ®Ç°(ºó)µÄ¼ÇÂ¼¾ù²»´ó(Ð¡)ÓÚËü¡£
int partition(SqList *L,int low,int high){
	RedType t;
	KeyType pivotkey;
	pivotkey = L->r[low].key;//ÓÃ×Ó±íµÄµÚÒ»¸ö¼ÇÂ¼×÷ÊàÖá¼ÇÂ¼
	while(low<high){
		//´Ó±íµÄÁ½¶Ë½»ÌæµØÏòÖÐ¼äÉ¨Ãè
		while(low<high&&L->r[high].key>=pivotkey) --high;//´ÓË÷Òý×î´óµÄ¿ªÊ¼£¬ÕÒµ½µÚÒ»¸ö±ÈÊàÅ¦¼ÇÂ¼Ð¡µÄ
		t = L->r[low];//½«±ÈÊàÖá¼ÇÂ¼Ð¡µÄ¼ÇÂ¼½»»»µ½µÍ¶Ë
		L->r[low] = L->r[high];
		L->r[high] = t;
		while(low<high&&L->r[low].key<=pivotkey) ++low;//´ÓË÷Òý×îÐ¡µÄ¿ªÊ¼£¬ÕÒµ½µÚÒ»¸ö±ÈÊàÅ¦¼ÇÂ¼´óµÄ
		t = L->r[low];//½«±ÈÊàÖá¼ÇÂ¼´óµÄ¼ÇÂ¼½»»»µ½¸ß¶Ë
		L->r[low] = L->r[high];
		L->r[high] = t;
	}
	return low;//·µ»ØÊàÖáËùÔÚÎ»ÖÃ
}

// Ëã·¨10.6(a) P274
// ½»»»Ë³Ðò±íLÖÐ×Ó±íL.r[low..high]µÄ¼ÇÂ¼£¬Ê¹ÊàÖá¼ÇÂ¼µ½Î»£¬
// ²¢·µ»ØÆäËùÔÚÎ»ÖÃ£¬´ËÊ±ÔÚËüÖ®Ç°(ºó)µÄ¼ÇÂ¼¾ù²»´ó(Ð¡)ÓÚËü¡£
// ¶ÔÊàÖáµÄ¸³ÖµÊÇ¶àÓàµÄ¡£
int partition_a(SqList *L,int low,int high){
	KeyType pivotkey;
	L->r[0] = L->r[low];//ÓÃ×Ó±íµÄµÚÒ»¸ö¼ÇÂ¼×÷ÊàÖá¼ÇÂ¼
	pivotkey = L->r[low].key;//ÊàÖá¼ÇÂ¼¹Ø¼ü×Ö
	while(low<high){
		//´Ó±íµÄÁ½¶Ë½»ÌæµØÏòÖÐ¼äÉ¨Ãè
		while(low<high&&L->r[high].key>=pivotkey) --high;
		L->r[low] = L->r[high];//½«±ÈÊàÖá¼ÇÂ¼Ð¡µÄ¼ÇÂ¼ÒÆµ½µÍ¶Ë
		while(low<high&&L->r[low].key<=pivotkey) ++low;
		L->r[high] = L->r[low];//½«±ÈÊàÖá¼ÇÂ¼´óµÄ¼ÇÂ¼ÒÆµ½¸ß¶Ë
	}
	L->r[low] = L->r[0];//ÊàÖá¼ÇÂ¼µ½Î»
	return low;//·µ»ØÊàÖáÎ»ÖÃ
}


// ½«aÖÐÕûÊýÐòÁÐÖØÐÂÅÅÁÐ³É×ÔÐ¡µ½´óÓÐÐòµÄÕûÊýÐòÁÐ(ÆðÅÝÅÅÐò) P273
void bubble_sort(int a[],int n){
	int i,j,t,change;
	for(i=n-1,change=1;i>1&&change;i--){//iÎªÐèÒª±È½ÏµÄ×îµ×²¿µÄË÷ÒýÏî
		change = 0;//Èç¹û¸ÃÖµÃ»ÓÐ¸Ä±ä£¬×îµ×²¿µÄÊý¾ÝÃ»ÓÐ¸Ä±ä
		for(j=0;j<i;j++){
			if(a[j]>a[j+1]){//Èç¹ûÇ°Ò»¸öÖµ²»ºóÒ»¸öÖµ´ó
				t = a[j];
				a[j] = a[j+1];
				a[j+1] = t;
				change = 1;//ÐèÒªÔÙ±È½Ï
			}
		}
	}
}

// Ëã·¨10.7 P275
// ¶ÔË³Ðò±íLÖÐµÄ×ÓÐòÁÐL.r[low..high]×÷¿ìËÙÅÅÐò¡£
void q_sort(SqList *L,int low,int high,int show){
	int pivot_loc;
	if(low<high){
		//³¤¶È´óÓÚ1
		if(show) pivot_loc = partition(L,low,high);//½«L.r[low..high]Ò»·ÖÎª¶þ
		else pivot_loc = partition_a(L,low,high);//½«L.r[low..high]Ò»·ÖÎª¶þ
		q_sort(L,low,pivot_loc-1,show);//¶ÔµÍ×Ó±íµÝ¹éÅÅÐò£¬pivot_locÊÇÊàÖáÎ»ÖÃ
		q_sort(L,pivot_loc+1,high,show);//¶Ô¸ß×Ó±íµÝ¹éÅÅÐò
	}
}

// Ëã·¨10.8 P276
void quick_sort(SqList *L,int show){
	q_sort(L,1,L->length,show);
}

#define N 8

int main(){
	/*ÆðÅÝÅÅÐò*/
	int md[N] = {49,38,65,97,76,13,27,49};
	int i;
	printf("Before bubble sort:\n");
	for(i=0;i<N;i++){
		printf("%d ",md[i]);
	}
	bubble_sort(md,N);
	printf("\nAfter bubble sort:\n");
	for(i=0;i<N;i++){
		printf("%d ",md[i]);
	}
	printf("\n\n");
	
	/*¿ìËÙÅÅÐò*/
	RedType d[N] = {
		{49,1},{38,2},{65,3},{97,4},{76,5},{13,6},{27,7},{49,8}
	};
	SqList s,m;
	for(i=0;i<N;i++){
		s.r[i+1] = d[i];//i=0²»ÓÃ»ò×öÉÚ±ø
	}
	s.length = N;
	m = s;//Á´±í¸´ÖÆ
	/*¿ìËÙÅÅÐòa*/
	printf("before quick a order:\n");
	print(s);
	quick_sort(&s,1);
	printf("after quick a order:\n");
	print(s);
	
	/*¿ìËÙÅÅÐòb*/
	printf("before quick b order:\n");
	print(m);
	quick_sort(&m,0);
	printf("after quick b order:\n");
	print(m);
	return 0;
}












