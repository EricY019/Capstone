/*
 *      Enum2.c
 *      
 *      Julio César Brizuela <brizuelaalvarado@gmail.com> 2009
 * 
 *      para el wikilibro "Programación en C (fundamentos)"
 *      bajo licencia FDL, adaptado del Dominio Público
  
  A los enumeradores se pueden asignar valores o expresiones constantes durante la declaracion:


        enum Hexaedro
        {
                VERTICE = 8,
                LADOS = 12,
                CARAS = 6
        };

 */
 
#include <stdio.h>
 
enum DiasSemanas
{
        Domingo = 2,
        Lunes,
        Marte,
        Miercoles,
        Jueves,
        Viernes,
        Sabado
};
/* Podemos inicializar nuestra primer constante Domingo 
 * en 2, asi pues las demas los siguientes valores enteros.
 */
 
int main(int argc, char** argv)
{
 
        enum DiasSemanas dia;
 
        for (dia = Domingo; dia <= Sabado; dia++)
        {
                printf("%d ", dia); /* Salida: 2 3 4 5 6 7 8 */
        }
 
        return 0;
}