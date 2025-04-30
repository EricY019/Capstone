#include <time.h>
#include <stdio.h>

int main() {
	unsigned long long iter = 0;
	struct timespec t;
	while (iter % 128 != 0 || (clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &t), t.tv_sec) < 1) {
		iter++;
	}
	printf("%llu iterations\n", iter);
	return 0;
}
