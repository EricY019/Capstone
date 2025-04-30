#include <stdio.h>

// defines do not have to be uppercase!
#define LIMIT 300
#define step 15

int main() {
  for (float fahrenheit = -100; fahrenheit <= LIMIT; fahrenheit += step) {
    float celsius = (5.0/9.0) * (fahrenheit - 32);
    printf("%3.0f°F = %6.2f°C\n", fahrenheit, celsius);
  }
}
