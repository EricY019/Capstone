/*
    Kopfgesteuerte Schleife WHILE
*/

# include <stdio.h>

int main ( void )
{
    setbuf( stdout, NULL ); // Ausgabepuffer ausschlaten

    int zahl = 1, zaehler = 1;

    while( zahl < 100 )
    {
        printf( "\n\t\t>>> %d) Summe %d <<<\n", zaehler, zahl );    
        zahl = zahl + ( zahl * 2 );
        zaehler++;
    }

    return 0;
}