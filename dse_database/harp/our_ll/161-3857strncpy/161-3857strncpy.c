#include <stdio.h>

char *strncpy(char *dst, const char *src, size_t n)
{
	char *d = dst;

	while (n != 0 && *src != '\0') {
		*dst++ = *src++;
		n--;
	}

	while (n != 0) {
		*dst++ = '\0';	
		n--;
	}

	return d;

}

int main(int argc, char *argv[])
{
	char buf[64] = "abcdefghijklmnopqrstuvwxyz";
	const char *src = "helloworld";

	strncpy(buf, src, 0);
	strncpy(buf, src, 5);
	strncpy(buf, src, 10);
	strncpy(buf, src, 11);
	strncpy(buf, src, 12);
	strncpy(buf, src, 20);

	return 0;
}
