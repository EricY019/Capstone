#include <stdio.h>

void print_and_reset() {

    printf(".[-]\n");
}

void bf10(int c) {

    int i;
    for (i = 0; i < c; i++) {

        printf("+");
    }
}


void bf50(int c) {

    int i, d, r, m;

    m = 7;

    d = c/m;
    r = c%m;

    printf(">");
    for (i = 0; i < m; i++) {

        printf("+");
    }

    printf("[<");

    for (i = 0; i < d; i++) {

        printf("+");
    }

    printf(">-]");
    printf("<");

    bf10(r);
}


void bf100(int c) {

    int i, d, r, m;

    r = c%2;
    printf(">");
    bf50(c/2);
    printf("[<++>-]<");
    bf10(r);
}


void bf255(int c) {

    int i, d, r, m;

    r = c%6;

    printf(">");
    bf50(c/6);
    printf("[<++++++>-]<");
    bf10(r);
}



int main(int argc, char* argv[]) {

    int c;
    while ( (c = fgetc(stdin)) != EOF ) {

        if ( c <= 10 ) {

            bf10(c);
            print_and_reset();
        } else if (c <= 50) {

            bf50(c);
            print_and_reset();
        } else if (c <= 100) {

            bf100(c);
            print_and_reset();
        } else {

            bf255(c);
            print_and_reset();
        }
    }

    return 0;
}


