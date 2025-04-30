#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
	for(long i=0; i<99999999; i++){
		malloc(1);
	}
	sleep(10);
}
