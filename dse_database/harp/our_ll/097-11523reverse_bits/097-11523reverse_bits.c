
#include<stdio.h>

#define CHAR_BIT 8
int swap_nibble(unsigned int);
int main(){
	unsigned int v=0x50; //	0101 0000
	unsigned int r=v;

    int a=0;
	int s=sizeof(v)*CHAR_BIT-1;
    printf( "sizeof %d",sizeof(unsigned int));
	for(v=v>>1;v;v=v>>1)
	{
		r<<=1;
		r|=v&1;
		s--;
	}

	r<<=s;
	printf("%x\n",r);
    r=0x5a;
    printf("sw : %d \n",swap_nibble(r)); //1010 0101
	return 0;
}

int swap_nibble(unsigned int n)
{
   return (((n & 0xf0) >> 4 | (n & 0x0f) << 4));
}
