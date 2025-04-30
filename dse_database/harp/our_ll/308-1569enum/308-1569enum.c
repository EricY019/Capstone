#include <stdio.h>

enum DefalutEnum
{
	DE_0,
	DE_1,
	DE_2,
	DE_3,
	DE_4
};

enum AssginedEnum
{
	AE_0 = 0,
	AE_1 = 3,
	AE_2 = 2,
	AE_3 = 1,
	AE_4 = 4
};

int main()
{
	for (int i = DE_0; i <= DE_4; ++i) {
		printf("default enum:[%d] = %d\n", i, DE_0 + i);
	}

	for (int i = AE_0; i <= AE_4; ++i) {
		printf("assigned enum:[%d] = %d\n", i, AE_0 + i);
	}

	return 0;
}
