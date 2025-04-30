#include <string.h>
#include <stdio.h>

size_t _strspn(const char *s1, const char *s2)
{
	const char *sc1;
	for (sc1 = s1; *sc1 != '\0'; sc1++)
		if (strchr(s2, *sc1) == NULL)
			return (sc1 - s1);
	return sc1 - s1;
}

int main()
{
	char *s1 = "apple";
	char *s2 = "applx";
	int n = _strspn(s1, s2);
	printf("%d\n", n);

	return 0;
}
