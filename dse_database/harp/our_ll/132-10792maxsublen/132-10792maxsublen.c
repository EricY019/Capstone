#include <stdio.h>
/*
 * What I want to do?
 */

int max_substr_len(const char* str, size_t len)
{
	int i;
	int max_len = 0;
	int map[256] = {-1};

	for(i=0; i<10; i++) {
		printf("map[%d] = %d\n", i, map[i]);
	}

	return max_len;
}


int main(int argc, char** argv)
{
	int ret = 0;
	char str[] = "abcdefgegcsgcasse";

	ret = max_substr_len(str, sizeof(str)/sizeof(str[0]));
	
	printf("str: %s\n", str);
	printf("ret: %d\n", ret);


	return ret;
}

