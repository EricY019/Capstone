#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

void test_stdout_buf_size()
{
	int i;

	for(i = 0; i < 4096; ++i)
		printf("a");

	sleep(3);
	printf("b");
	sleep(10);
}

int main(int argc, char *argv[])
{
	test_stdout_buf_size();

	return 0;
}
