#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]){
	char buf[1024];
	int i, n;

	for (n = 0, i = 1; i < argc; i++) {
		n += snprintf(&buf[n], 1024 - n, "%s ", argv[i]);
	}
	buf[n] = '\0';
	return system(buf);
}
