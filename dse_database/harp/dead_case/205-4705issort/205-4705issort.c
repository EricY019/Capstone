#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int issort(void *data, int size, int esize,
		int (*compare)(void *key1, void *key2))
{
	int ret = -1;
	int i = 0;
	int j = 0;
	char *ele = (char *)data;
	char *temp = NULL;

	if((NULL==data) || (0==size) || (0==esize) || (NULL==compare)) {
		ret = -1;
		goto LBL_RET;
	}

	temp = malloc(esize);
	if(NULL == temp) {
		ret = -2;
		goto LBL_RET;
	}

	for(i=1 ; i<size ; i++) {
		memcpy(temp, &ele[i], esize);
		j = i-1;
		while((j>=0) && (0 < compare(temp, &ele[j]))) {
			memcpy(&ele[j+1],&ele[j],esize);
			--j;
		}
		++j;
		memcpy(&ele[j], temp, esize);
		
	}
	free(temp);
	ret = 0;
LBL_RET:
	return ret;
}

int compare_char(void *key1, void *key2)
{
	if(*(char *)key1 > *(char *)key2)
		return 1;
	else if(*(char *)key1 < *(char *)key2)
		return -1;
	else
		return 0;
}

int main(int argc, char *argv[])
{
	int i = 1;
	while(i < argc) {
		printf("%s\n",argv[i]);
		issort(argv[i], strlen(argv[i]), sizeof(*argv[0]), compare_char);
		printf("%s\n",argv[i]);
      i++;
	}

	return 0;
}
