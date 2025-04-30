#include<stdio.h>
#include<unistd.h>
#include<pthread.h>
#define NUM_THREADS 5
void *printhello(void *threadid){ //using a void pointer
	long tid;
	tid = (long) threadid;
	printf("\nhello wolrd ! from:%ld",tid);
	sleep(10);
	pthread_exit(NULL);
}
int main(){
int i;
long t;
pthread_t thread[NUM_THREADS];
for(i=0;i<5;i++)
	if( pthread_create(thread+i,NULL,printhello,(void *) (t=i+1)) )
		printf("error creating thread ; %d",i+1);
pthread_exit(NULL);
return 0;
}
