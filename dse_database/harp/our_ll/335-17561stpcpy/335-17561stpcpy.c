#include <assert.h>
#include <stdio.h>

char *stpcpy(char *dst, const char *src)
{
	assert(dst != NULL && src != NULL);

	while ((*dst++ = *src++) != 0)
		;

	return (dst - 1);
}

int main(int argc, char *argv[])
{
	char *p;
	char buf[32] = "abcdefghijklmnopqrstuvwxyz";
	const char *src = "helloworld";

	p = stpcpy(buf, src);
	assert(*p == '\0');
	assert((p-buf) == 10);

	return 0;
}
