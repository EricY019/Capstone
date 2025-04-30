/*
   Xi Chen(511272827@qq.com)
   cxsjabcabc
*/
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

void dump_data(void *data, int bytes)
{
	int i;
	unsigned char *p;

	p = (unsigned char *)data;
	for (i = 0; i < bytes; ++i) {
		printf("%x ", p[i]);
	}
	printf("\n");
}

int main(int argc, char *argv[])
{
	float d = 5.0f;

	dump_data(&d, sizeof(d));

	return 0;
}
