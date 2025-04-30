//3. Liczba doskonała to liczba, która jest sumą podzielników od niej mniejszych.
//Na przykład 6 jest liczbą doskonałą ponieważ:

//1 + 2 + 3 = 6

//Napisz funkcję, która sprawdza czy podana liczba jest doskonała. Użyj tej
//funkcji do wypisania wszystkich liczb doskonałych mniejszych od 10 000.

#include <stdio.h>

int is_perfect(size_t n) {
  int suma_podzielnikow = 0;

  for (size_t i = 1; i < n; i++) {
    if (n % i == 0) {
      suma_podzielnikow += i;
    }
  }

  return suma_podzielnikow == n;

}

int main () {
  size_t max = 10000;

  for (size_t i = 0; i < max; i++) {
    if(is_perfect(i)) {
      printf("Liczba %ld jest doskonała\n", i);
    }
  }
}
