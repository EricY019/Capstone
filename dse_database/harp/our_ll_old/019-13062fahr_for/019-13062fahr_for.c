#include <stdio.h>

int main() {
  printf("%3s = %6s\n", "Fahrenheit", "Celsius");
  for (float fahrenheit = -50; fahrenheit <= 250; fahrenheit += 10) {
    float celsius = (5.0/9.0) * (fahrenheit - 32);
    printf("%3.0f°F = %6.2f°C\n", fahrenheit, celsius);
  }

  printf("%3s = %6s\n", "Celsius", "Fahrenheit");
  for (float celsius = -50; celsius <= 250; celsius += 10) {
    float fahrenheit = (celsius*9.0/5.0) + 32;
    printf("%3.0f°C = %6.2f°F\n", celsius, fahrenheit);
  }
}
