/*
   Xi Chen(511272827@qq.com)
   cxsjabcabc
*/
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

char *realloc_more(char **pbuf, int new_size) {
	char *temp;
	temp = realloc(*pbuf, new_size);
	if (!temp) {
		printf("realloc fatal error!\n");
		return NULL;
	} else {
		*pbuf= temp;
		return temp;
	}
}

void unix2dos(int argc, char *argv[])
{
	char *file;
	FILE *fp;
	char *src;
	char *dest;
	long src_len, dest_len;
	size_t ret;
	int i, j = 0;

	if (argc < 2)
		return;
	
	file = argv[1];
	fp = fopen(file, "r+");
	if (!fp) {
		printf("open file %s error!\n", file);
		goto error_exit;
	}
	fseek(fp, 0, SEEK_END);
	src_len = ftell(fp);

	src = (char *)malloc(src_len);
	if (!src) {
		printf("malloc error!\n");
		goto error_alloc_src;
	}

	dest = (char *)malloc(src_len);
	if (!dest) {
		printf("malloc dest buf error!\n");
		goto error_alloc_dest;
	}
	dest_len = src_len;

	fseek(fp, 0, SEEK_SET);
	ret = fread(src, 1, src_len, fp);
	if (ret != src_len) {
		printf("load file error! ret:%zu\n", ret);
		goto error_load_file;
	}

	for (i = 0; i < src_len; ++i) {
		if (src[i] != '\n') {
			if (j == dest_len) {
				char *temp = realloc_more(&dest, dest_len * 2);
				if (!temp)
					goto error_load_file;
				else {
					dest = temp;
					dest_len *= 2;
				}
			}
			dest[j++] = src[i];
		}
		else {
			if (j == dest_len) {
				char *temp = realloc_more(&dest, dest_len * 2);
				if (!temp)
					goto error_load_file;
				else {
					dest = temp;
					dest_len *= 2;
				}
			}
			dest[j++] = '\r';
			dest[j++] = '\n';
		}
	}

	fseek(fp, 0, SEEK_SET);
	ret = fwrite(dest, 1, j, fp);
	if (ret != j) {
		printf("fwrite dest error!ret:%zu\n", ret);
		goto error_load_file;
	}
	printf("unix2dos ok, len:%d!\n", j);

error_load_file:
	free(dest);
error_alloc_dest:
	free(src);
error_alloc_src:
	fclose(fp);
error_exit:
	return;
}

int main(int argc, char *argv[])
{
	unix2dos(argc, argv);
	return 0;
}
