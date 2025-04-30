#include <utmpx.h>
#include <stdlib.h>
#include <stdio.h>

int main()
{
	struct utmpx *utmp_info;

	while((utmp_info = getutxent()) != NULL) {
		if (utmp_info->ut_type != USER_PROCESS)
			continue;
		printf("%s; %s; %s\n",
		       utmp_info->ut_user,
		       utmp_info->ut_line,
		       utmp_info->ut_host);
		       
	}

	return 0;
}
