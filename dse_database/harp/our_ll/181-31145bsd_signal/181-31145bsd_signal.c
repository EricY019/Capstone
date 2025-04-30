/*
 * signal handling with BSD semantics
 * 
 * The bsd_signal() function takes the same arguments, and performs the same task, as signal(2).
 * 
 * The  difference	between  the  two is that bsd_signal() is guaranteed to provide reliable signal semantics, that is:
 * a) the disposition of the signal is not reset to the default when the handler is invoked;
 * b) delivery of further instances of the signal is blocked while the signal handler is executing; and
 * c) if the  handler interrupts a blocking system call, then the system call is automatically restarted.
 * A portable application cannot rely on signal(2) to provide these guarantees.
 */


#include<stdio.h>
#include<unistd.h>
#include<signal.h>

void timeout(int sig)
{
	if (sig == SIGALRM)
		puts("Time out!");
	alarm(2);
}

void keycontrol(int sig)
{
	if (sig == SIGINT)
		puts("CTRL + C pressed.");
}

int main(int argc, char *argv[])
{
	int i;
	bsd_signal(SIGALRM, timeout);
	bsd_signal(SIGINT, keycontrol);
	alarm(2);

	for (i = 0; i < 3; i++) {
		puts("waiting....");
		sleep(600);
	}
	return 0;
}
