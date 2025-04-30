#include <stdio.h>
int main() {
int liczba, i, suma;
 printf ("Liczby doskonałe w przedziale 1=><=10000: \n");
  for (liczba = 1; liczba <= 10000; liczba++) /*petla*/
 {   
 i = 1;
 suma = 0;
 while (i < liczba)    
 {
if (liczba%i == 0)
 suma = suma + i;
 i++; 
 }
 if (suma == liczba)
 printf("%d \n", liczba);
 }   
return 0;
}

