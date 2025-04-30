
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

void *func1(void *arg)
{
	int i = 0;
	for (i = 0;i < 3;i++)
	{
		printf("in func1\n");
		sleep(1);
	}
}

int main(int argc, char *argv[])
{
	int *save = NULL;
	pthread_t pid1;
	
	pthread_create(&pid1,NULL,func1,NULL);


	pthread_detach(pid1);
	pthread_join(pid1,NULL);

	printf("after join \n");
	sleep(3);
	return 0;
}
