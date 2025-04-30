// Program to illustrate static and automatic variables

#include <stdio.h>

void auto_static(void)
{
	auto int autoVar = 1;
	static int staticVar = 1;
	
	printf("autoVar = %i, staticVar = %i\n", autoVar++, staticVar++);
}

int main(void)
{
	int i;
	for(i = 0; i < 5; ++i)
		auto_static();
	
	return 0;
}
