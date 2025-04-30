#include <pthread.h>
#include <stdio.h>

void* ALL_IS_OK = (void*)123456789L;

char* mess[2] = {"boys", "girls"};

void* writer (void* arg){
	int i,j ;
	for(i=0; i<10;i++){
		printf("Hi %s! (I'm %lx)\n", arg, pthread_self());
		j = 800000;
		while(j--);
	}
	return ALL_IS_OK;
}

int main (void){
	void* status;
	pthread_t writer1_pid, writer2_pid;

	pthread_create(&writer1_pid, NULL, writer, (void*)mess[1]);
	pthread_create(&writer2_pid, NULL, writer, (void*)mess[0]);

	pthread_join(writer1_pid, &status);
	if (status == ALL_IS_OK) printf("Thread %lx completed ok \n", writer1_pid);

	pthread_join(writer2_pid, &status);
	if (status == ALL_IS_OK) printf("Thread %lx completed ok \n", writer2_pid);

	return 0;
}