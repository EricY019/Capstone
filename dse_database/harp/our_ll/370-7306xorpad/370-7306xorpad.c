#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void padit(unsigned char** memtobepadded,int memsize, unsigned char* pad,int size)
{
unsigned char* padme = *memtobepadded;

int i = 0;
int current = 0;
for(i = 0; i < memsize; i++)
{
	if(current >= size)
	{
		current = 0;
	}
	padme[i] = padme[i] ^ pad[current++];
}

}


char* tohex(unsigned char* num_buf, int size)
{
char* str_buf = calloc(2*size + 1,0);   // X is the number of bytes to be converted
int i;
for(i = 0; i < size;i++)
	sprintf(&str_buf[i*2],"%02X",num_buf[i]);
return str_buf;

}


int main()
{

unsigned char* memory;
memory = (unsigned char*)calloc(5,1);
unsigned char pad[] = { 0x02, 0x03, 0x04 };
padit(&memory,5,pad,3);

char* hex = tohex(memory,5);

printf("String: \"%s\"\n",hex);
free(hex);


}
