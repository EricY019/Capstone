/*
   Xi Chen(511272827@qq.com)
   cxsjabcabc
*/
#include <stdio.h>

int main(int argc, char *argv[])
{
	int i = 1;
	int j;

	while(i < 10) {
		if (i > 5)
			break;
		j = i;
		++i;
	}
 
	return 0;
}
