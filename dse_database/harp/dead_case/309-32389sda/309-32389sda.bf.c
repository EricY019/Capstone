#include <stdio.h>

#define MEM_SIZE 30000

int main(void){
char mem[MEM_SIZE]; register char* mem_ptr = mem;
register char* end = mem + MEM_SIZE;
mem_ptr += 1;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
*mem_ptr += 8;
while(*mem_ptr){

mem_ptr -= 1;
if(mem_ptr < mem) mem_ptr = end - (mem - mem_ptr);
*mem_ptr += 9;
mem_ptr += 1;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
*mem_ptr -= 1;
}

mem_ptr -= 1;
if(mem_ptr < mem) mem_ptr = end - (mem - mem_ptr);
putchar(*mem_ptr);

mem_ptr += 2;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
*mem_ptr += 1;
mem_ptr += 1;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
*mem_ptr += 1;
mem_ptr += 1;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
*mem_ptr += 2;
mem_ptr += 1;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
while(*mem_ptr){

*mem_ptr -= 1;
}

*mem_ptr += 1;
mem_ptr -= 1;
if(mem_ptr < mem) mem_ptr = end - (mem - mem_ptr);
while(*mem_ptr){

mem_ptr += 1;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
while(*mem_ptr){

*mem_ptr -= 1;
mem_ptr += 1;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
*mem_ptr += 1;
mem_ptr -= 2;
if(mem_ptr < mem) mem_ptr = end - (mem - mem_ptr);
*mem_ptr += 4;
mem_ptr += 1;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
}

mem_ptr -= 2;
if(mem_ptr < mem) mem_ptr = end - (mem - mem_ptr);
}

mem_ptr += 1;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
putchar(*mem_ptr);

*mem_ptr += 7;
putchar(*mem_ptr);
putchar(*mem_ptr);

*mem_ptr += 3;
putchar(*mem_ptr);

mem_ptr += 2;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
*mem_ptr += 7;
putchar(*mem_ptr);

mem_ptr -= 3;
if(mem_ptr < mem) mem_ptr = end - (mem - mem_ptr);
while(*mem_ptr){
while(*mem_ptr){

*mem_ptr -= 1;
}

mem_ptr -= 1;
if(mem_ptr < mem) mem_ptr = end - (mem - mem_ptr);
while(*mem_ptr){

*mem_ptr -= 1;
}

mem_ptr += 1;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
}

mem_ptr -= 1;
if(mem_ptr < mem) mem_ptr = end - (mem - mem_ptr);
*mem_ptr += 15;
putchar(*mem_ptr);

mem_ptr += 2;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
putchar(*mem_ptr);

*mem_ptr += 3;
putchar(*mem_ptr);

*mem_ptr -= 6;
putchar(*mem_ptr);

*mem_ptr -= 8;
putchar(*mem_ptr);

mem_ptr += 2;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
*mem_ptr += 1;
putchar(*mem_ptr);

mem_ptr += 1;
if(mem_ptr >= end) mem_ptr = mem + (end - mem_ptr);
*mem_ptr += 4;
putchar(*mem_ptr);

}
