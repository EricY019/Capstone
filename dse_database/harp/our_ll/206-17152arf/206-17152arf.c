#include <stdio.h>

#define SIZE 5

void show_array(const double ary[], int len);

void mult_array(double ary[], double mult, int len);

int main(void) {
    double dip[SIZE] = {5, 10.2, 3, 4, 100};
    printf("the origin dip ary: \n");
    show_array(dip, SIZE);
    printf("the mult dip ary: \n");
    mult_array(dip, 2.0, SIZE);
    show_array(dip, SIZE);
}

void show_array(const double ary[], int len) {
    int i;
    for (i = 0; i < len; i++) {
        printf("ary[%d]=%8.3f \n", i, ary[i]);
    }
}

void mult_array(double ary[], double mult, int len) {
    int i;
    for (i = 0; i < len; i++) {
        ary[i] *= mult;
    }
}
