#include <stdio.h>

/*
    Una empresa de micros trabaja con un vector de 24 posiciones, en cada posición se indica, cuantos micros 
    salen por hora. En otro vector, tmb de 24 posicones, esta la cantidad total de pasajeros q sale por 
    hora. Determinar cual es la cantidad promedio de pasajeros, por micro, en cada hora, y cual es la hora que
    mas partida de micro hubo. Sabiendo que cada boleto cuesta $800 en promedio, cargar un vector con la 
    recaudación por hora.
*/

int main()
{
    int microsxhora[24];
    int pasajerosxhora[24];
    int recaudaciónxhora[24];
    int promediopxh[24];
    int cantmaxmicros = 0;
    int recaudacionxhora[24];
    int i = 0;

    for (i=0; i<24; i=i+1)
    {
        promediopxh[i] = pasajerosxhora[i] / microsxhora[i];
        
        if(cantmaxmicros < microsxhora[i])
        {
            cantmaxmicros = microsxhora[i];
        }
        
        recaudacionxhora[i] = pasajerosxhora[i] * 800;
    }

    return 0;
}