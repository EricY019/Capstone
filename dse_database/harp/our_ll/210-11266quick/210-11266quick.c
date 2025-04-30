#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define TAM 10000 // Declara o tamanho do vetor;

void quickSort(int *vetor, int esq, int dir) {
        int i, j, x, y;

        i = esq;
        j = dir;
        x = vetor[(esq + dir) / 2];

        while(i <= j) {
                while(vetor[i] < x && i < dir) {
                        i++;
                }
                while(vetor[j] > x && j > esq) {
                        j--;
                }
                if(i <= j) {
                        y = vetor[i];
                        vetor[i] = vetor[j];
                        vetor[j] = y;
                        i++;
                        j--;
                }
        }

        if(j > esq) {
                quickSort(vetor, esq, j);
        }
        if(i < dir) {
                quickSort(vetor, i, dir);
        }
}

int main(int argc, char const *argv[]) {

        int vetor[TAM];
        int i;

        srand(time(NULL));
        for (i=0; i < TAM; i++)
                vetor[i] = (rand() % 10000) + 1;  // Preenche o vetor com valores aleatórios;

        quickSort(vetor, 0, TAM - 1); // Chama a função de Ordenação;

        
           printf("\n\n");
           for (i=0; i < TAM; i++)    {
           printf(" %d,",vetor[i]);
           }
           printf("\n\n ");
         
        return 0;
}
