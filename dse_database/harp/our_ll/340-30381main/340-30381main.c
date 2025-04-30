#include <stdio.h>

int modOfPower(int value, int power, int modulus);

int main(void)
{
    // Loop 100 times
    for (int i = 1; i < 10; i++) {
        // Take the mod of number to large power
        int pow = i * 10000000;
        int value = modOfPower(324322, pow, 3724);
        printf("324322^(%i) mod 3724 = %i\n", pow, value);
    }
    return 0;
}

/**
 * Get the modulus of an integer raised to a power.
 */
int modOfPower(int value, int power, int modulus) {
    int x = 1;
    for (int i = 0; i < power; i++) {
        x = (x * value) % modulus;
    }
    return x;
}
