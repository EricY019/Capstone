#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

//Functions to be ran on thread: pth

void *testFunction(){
	int i;
	for(i=0;i<10;i++){
		sleep(1);
		printf("Test1 Loop %d\n", i);
	}
}

//Functions to be ran on thread: pth1

void *testFunction1(){
	int i;
	for(i=0;i<10;i++){
		sleep(1);
		printf("Test2 Loop %d\n", i);
	}
}

int main(){
	//Define threads
	pthread_t pth, pth1;
	
	//Create thread -> Start thread
	//If the function is not void, then the create function would return a value
	// depends on the type of the function
	pthread_create(&pth, NULL, testFunction, NULL);
	pthread_create(&pth1, NULL, testFunction1, NULL);

	//Thread join here, afterward return values can be fetched.
	pthread_join(pth, NULL);
	pthread_join(pth1, NULL);

	//Continues

	return 0;
}