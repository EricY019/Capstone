/* malloc until it breaks */
/* Public domain. Do as you will! See LICENSE for long boring version. */
/* John Slee <john@slee.id.au> Sun 15 Sep 2013 01:36:05 MYT */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>

#define default_increment 131072

volatile int stop;

void handle_interruption(int x) {
	stop = 1;
}

int main(int argc, char** argv) {
	size_t increment = default_increment, s = 0;
	int steps = 0, speedups = 0, slowdowns = 0;
	printf("initial increment is %zd\n", increment);
	s += increment;
	steps++;
	stop = 0;
	signal(SIGINT,  handle_interruption);
	signal(SIGTERM, handle_interruption);
	signal(SIGHUP,  handle_interruption);
	void* p = malloc(s);
	while (increment > 1) {
		void *newp = realloc(p, s + increment);
		if (newp != NULL) {
			p = newp;
			s += increment;
			steps++;
			printf("incrementing by %zd to %zd bytes\n", increment, s);
			increment *= 2;
			speedups++;
			printf("speeding up to %zd-byte steps\n", increment);
		} else {
			increment /= 2;
			slowdowns++;
			printf("slowing down to %zd-byte steps\n", increment);
		}
		steps++;
		if (stop)
			break;
	}
	free(p);
	printf(	"\n\n"
		"allocated %zd bytes of memory\n"
		"steps=%d\n"
		"speedups=%d\n"
		"slowdowns=%d\n",
		s,
		steps,
		speedups,
		slowdowns
	);
	return 0;
}
