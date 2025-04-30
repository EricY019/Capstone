#include <stdio.h>

void squeeze(char s1[], char s2[]);
int stringContains(char string[], char c);

/* squeese string1 against string2 */
int main() {
	char s1[] = "green tractor";
	char s2[] = "r ";

	squeeze(s1, s2);

	printf("%s\n", s1);

	return 0;
}

/* deletes each character in s1 that appears in s2 */
void squeeze(char s1[], char s2[]) {
	int i, j;	/* indexes */
	
	for (i=j=0; s1[i] != '\0'; ++i)
		if (stringContains(s2, s1[i]) == -1)
			s1[j++] = s1[i];
	s1[j] = '\0';
}

/* returns position of char c in string s. returns -1 if not in string */
int stringContains(char s[], char c) {
	int i;	/* index */

	for (i = 0; s[i] != '\0'; ++i)
		if (c == s[i])
			return i;
	return -1;
}