#include <stdio.h> // we are doing input/output operations
#include <unistd.h> // POSIX, we are running this on a posix compliant system
#include <poll.h> //we want this for multiplexing blocks for stdin and stout
#define TIMEOUT 5 /* poll timeout, in seconds */
int main (void)
{
	 struct pollfd fds[2];
	 int ret;

	 /* watch stdin for input */
	 fds[0].fd = STDIN_FILENO;
	 fds[0].events = POLLIN;

	 /* watch stdout for ability to write (almost always true) */
	 fds[1].fd = STDOUT_FILENO;
	 fds[1].events = POLLOUT;

	 /* All set, block! */
	 ret = poll (fds, 2, TIMEOUT * 1000); // activate poll, timeout set if nothing happens with our fds
	 if (ret == -1) {
		 perror ("poll");
		 return 1;
	 }
	 if (!ret) {
		 printf ("%d seconds elapsed.\n", TIMEOUT);
		 return 0;
	 }
	 
	 if (fds[0].revents & POLLIN) // stdin is not blocked and available
	 	printf ("stdin is readable\n");
	 if (fds[1].revents & POLLOUT) // stdout is not blocked and available
	 	printf ("stdout is writable\n");

	 return 0;
}
