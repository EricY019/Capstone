// On my machine, this code seems to run non-deterministically. 
// That is, it produces different results over time (even though it's entirely self-contained).


#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <unistd.h>

#define Dx 10
#define Dy 10

void initialize(int array[Dx][Dy], int t);
void print(int array[Dx][Dy]);
void play(int array[Dx][Dy], int t);

int main (void) {
    int x[Dx][Dy];
    
    initialize(x, 1);
    print(x);
    play(x, 10);
    return 0;
} // main

void initialize(int array[Dx][Dy], int t) {
    int i,j;
    for (i = 0; i < Dx; i++) {
        for (j = 0; j < Dy; j++) {
            if(i % 2 == 0 && j % 2 == 0)
                array[i][j] = t;
            else
                array[i][j] = 1;
        }
    }
}
    
void print(int array[Dx][Dy]) {
    int i,j;
    for (i = 0; i < Dx; i++) {
        for (j = 0; j < Dy; j++) {
            printf("%d\t", array[i][j]);
        }//for
        printf("\n");
    }//for
}

void play(int array[Dx][Dy], int t) {
    if (t == 0)
        return;
    
    int final[Dx][Dy];
    
    int i,j;
    for (i = 0; i < Dx; i ++) {
        for (j = 0; j < Dy; j++) {
            final[i][j] = ((array[i][j] + array[(i - 1) % Dx][j]) % 10)\
                * ((array[i][j] + array[(i + 1) % Dx][j]) % 10)\
                * ((array[i][j] + array[(i - 1) % Dx][(j - 1) % Dy]) % 10)\
                * ((array[i][j] + array[(i - 1) % Dx][(j + 1) % Dy]) % 10)\    
                * ((array[i][j] + array[(i + 1) % Dx][(j - 1) % Dy]) % 10)\
                * ((array[i][j] + array[(i + 1) % Dx][(j + 1) % Dy]) % 10)\
                * ((array[i][j] + array[i][(j - 1) % Dx]) % 10)\
                * ((array[i][j] + array[i][(j - 1) % Dx]) % 10); 
            final[i][j] = (final[i][j] % 10) * (final[i][j] % 10);
        }//for
    }//for

    array = final;
    system("clear");
    print(array);
    sleep(1);
    play(array, t-1);
}
