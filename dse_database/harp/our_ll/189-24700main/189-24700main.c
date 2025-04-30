#include <stdio.h>
#include <string.h>

void palindrome()
{
	static char* str = "([{}()])\0";
	// static char* str = "xyzyx\0";
	char arr[10] = { 0 };
	int len = strlen(str);
	int next =0, top = 0, mid = len / 2 - 1;
	
	if (len % 2 != 0) {
		next = mid + 2;

	} else {
		next = mid + 1;
	}
	
	printf("len: %d, mid: %d, next: %d\n", len, mid, next);

	for (int i = 0; i <= mid; ++i) {
		arr[top++] = str[i];
	}
	--top;
	int ret = 0;

	for (int j = next; j < len; ++j, --top) {
		if (str[j] != arr[top]) {
			ret = 0;
			break;
		}
		else {
			ret = 1;
		}
	}

	printf("ret: %d\n", ret);
}

int main(int argc, char* argv[])
{
	palindrome();
	return 0;
}
