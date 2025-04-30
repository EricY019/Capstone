//
// Created by Bryan Apperson on 12/4/16.
//
#include <stdio.h>

int main() {
    float fahr, celsius;
    int lower, upper, step;
    float ratio;

    lower = 0;
    upper = 300;
    step = 20;

    ratio = 5.0 / 9.0;

    fahr = upper;

    printf("This is a simple program that converts\n");
    printf("Celsius to Fahrenheit in decimal format\n");

    while (fahr >= lower) {
        celsius = ratio * (fahr - 32);
        printf("Celsius: %6.2f Fahrenheit: %3.1f\n", celsius, fahr);
        fahr = fahr - step;
    }

    celsius = upper;
    ratio = 9.0 / 5.0;

    printf("Now let's print the reverse\n");

    while (celsius >= lower) {
        fahr = celsius * ratio + 32;
        printf("Fahrenheit: %6.2f Celsius: %3.1f\n", fahr, celsius);
        celsius = celsius - step;
    }

    return 0;
}
