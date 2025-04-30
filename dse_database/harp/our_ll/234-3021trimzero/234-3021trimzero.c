#include<stdio.h>
#include<string.h>

int main(void)
{
    char buf[]="00001234";
	int i = 0, bufSize = sizeof(buf);
	char* lu8pBuf = buf;
	char tmpBuf[512] = { 0 };
	while (i < bufSize && (*lu8pBuf == '0')) {
		i++;
		lu8pBuf++;
		printf("lu8char: %c\n", *lu8pBuf);
	}
	memcpy(tmpBuf, buf+i, bufSize - i);
	printf("tmpbuf: %s\n", tmpBuf);
	memset(buf, 0, bufSize);
	memcpy(buf, tmpBuf, bufSize - i);
	printf("buf: %s\n", buf);
}
