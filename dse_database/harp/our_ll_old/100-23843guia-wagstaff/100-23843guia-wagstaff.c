/*
  Funcion: Resolver la formula w = (2^p + 1) / 3

           Los primeros numeros de Wagstaff son:
	   3, 11, 43, 683, 2731, 43691, 174763, 2796203, 715827883
	   2932031007403, 768614336404564651, etc...

           Link a wikipedia eng sobre numeros de Wagstaff
	   https://en.wikipedia.org/wiki/Wagstaff_prime#Known_Wagstaff_primes
	   
	   Nota:    A lo largo del codigo aparecen varios printf(); comentados
	   con '//DEBUG'
           Si uno necesitara checkear el valor de alguna variable, descomentar
	   esa linea.

*/
#include <stdio.h>
#define n 31

int main () {
  int p, w, div_p, div_w, prim_v, resultado, i;
  /*
    n   = el numero hasta donde voy a buscar primos (tmb evaluo a n inclusive)
    p   = numero a comprobar si es n° primo
    w   = numero a comprobar si es n° de wagstaff
  div_p = divisor del posible numero primo
  div_w = divisor del posible numero wagstaff
  prim_v es un contador:
                      cada vez que el modulo de p / div_p == 0, se aumenta en 1
                      cada vez que el modulo de w / div_w == 0, se aumenta en 1
                      va a utilizarse en momentos diferentes.
  resultado == 2 en primera instancia, sirve para calcular 2^p
    i   = la variable del for para calcular 2^p
  */
  //Genero un numero
  //Inicializa en 2 porque 2 es el 1er n° primo
  for (p = 2; p <= n ; p++) {
    //reseteo de prim_v
    prim_v = 0;
    //DEBUG printf("\np = %d", p);
    for (div_p = 1; div_p <= p ; div_p++) {
      //DEBUG printf("\ndiv_p = %d", div_p);
      if (p % div_p == 0) {	
	prim_v = prim_v + 1;
	//DEBUG printf("\nprim_v = %d", prim_v);
      }
    }
    //Aca se verifica si el numero 'p' es primo o no
    if (prim_v == 2) {
      //DEBUG printf("\n%d es primo", p);
      
      //Si consegui un n° primo, sigo resolviendo la formula de w
      //Ahora calculo cuanto seria 2^p
      
      //resultado = el resultado de 2^p
      //siempre se inicializa en 2

      resultado = 2;
      for(i = 2; i <= p ; i++) {
	resultado = resultado * 2;
	//DEBUG printf("\n2^%d es %d\n\n", p, resultado);
      }

      w = (resultado + 1) / 3;
      //DEBUG printf("\nPosible n° de wagstaff = %d\n", w);

      //por ahora 'w' es un posible numero de wagstaff, checkeo si w es un numero primo

      //reseteo de prim_v
      prim_v = 0;

      //div_w = divisor del posible numero w
      for (div_w = 1; div_w <= w ; div_w++) {
	//DEBUG printf("\ndiv_w = %d", div_w);
	if (w % div_w == 0) {	
	  prim_v = prim_v + 1;
	  //DEBUG printf("\nprim_v = %d", prim_v);
	}
      }
      if (prim_v == 2)
	printf("\nn° de Wagstaff encontrado! %d", w);
    } else {
      //DEBUG printf("\n%d no es primo\n", p);
    }
    //Vuelvo al primer for, donde 'p' ahora es p + 1
  }
  printf("\n\n");
  return 0;
}
