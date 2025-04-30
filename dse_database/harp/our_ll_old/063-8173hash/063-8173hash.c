#include <stdio.h>

 int hash(char* key, int table_size)
{
	unsigned int hash_val = 0;
	while ( (unsigned int)*key != 0 )
		hash_val += (unsigned int) key++;
	
	return hash_val % table_size;
}

int main()
{
	int h = hash("hello world", 5);
	printf("%d", h);
}
