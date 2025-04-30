
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

void *func1(void *arg)
{
	static int num = 123;
	int i = 0;
	for (i = 0;i < 3;i++)
	{
		printf("in func1\n");
		sleep(1);
	}
	return &num;
}

int main(int argc, char *argv[])
{
	int *save = NULL;
	pthread_t pid1;
	
	pthread_create(&pid1,NULL,func1,NULL);

	pthread_join(pid1,(void **)&save);
	printf("save content is %d\n",*((int *)save));

	printf("after join \n");
	return 0;
}
