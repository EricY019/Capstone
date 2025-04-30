#include <stdlib.h>
#include <string.h>
#include <stdio.h>

// Routines
char* rstrdup(const char* str);
void reverse_string(char* str);

int 
main() {
	char str[] = "Atul Patil";
	char* rstr = rstrdup(str);
    reverse_string(str);
	printf("%s ==> %s\n", str, rstr);
	return 0;
}

char *
rstrdup(const char *str) {
	if (!str) return NULL;
	char* rstr = strdup(str);
    reverse_string(rstr);
    return rstr;
}

void
reverse_string(char *str) {
	if (!str) return;
	int len = strlen(str);
	char* start = str;
	char* end = str + len - 1;
	while(start < end) {
		char tmp = *start;
        *start = *end;
        *end = tmp;
		start++; end--;
	} 
   return;
}

