/*
 * =====================================================================================
 *
 *       Filename:  7-01sigmask.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2014年08月22日 23时41分16秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Z_Z.W (ZZW), myhongkongzhen@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>

void handle(int s){
	printf("signal ...\n");
}

int main(){

	int num = 0;
	int i = 0;

	sigset_t sigs;
	sigemptyset(&sigs);
	sigaddset(&sigs,SIGINT);
	//	sigfillset(&sigs);

	signal(SIGINT,handle);

	sigprocmask(SIG_BLOCK,&sigs,0);

	for(; i < 10 ; i ++){
		num += i;
		sleep(1);
		printf("%d ",num);
	}
	printf("%d\n",num);
	sigprocmask(SIG_UNBLOCK,&sigs,0);
	printf("over!\n");

	return 0;
}

