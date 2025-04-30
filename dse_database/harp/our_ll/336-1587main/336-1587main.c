#include <stdio.h>

int main(int args, char ** argv) {
    int i;
    for(i = 0; i< args; i++) {
        printf("%s\n", argv[i]);
    }
    return 0;
}
