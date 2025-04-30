
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>


void *func1(void *arg)
{
	int i = 0;
	static char buf[] = "hello";
	for (i = 0;i < 5;i++)
	{
		printf("in func1\n");
		sleep(1);
		if (i == 3)
		{
			pthread_exit((void *)buf);
		}
	}
}

int main(int argc, char *argv[])
{
	int *save = NULL;
	pthread_t tid;

	pthread_create(&tid,NULL,func1,NULL);

	
	pthread_join(tid,((void*)&save));
	
	printf("%s\n",((char *)save));
	return 0;
}
