#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define TAM 10000 // Declara o tamanho do vetor;

void merge (int *vetor, int tam, int metade) {
        int i, j, k;
        int *x = malloc(tam * sizeof (int));
        for (i = 0, j = metade, k = 0; k < tam; k++) {
                x[k] =  j == tam ? vetor[i++] : i == metade ? vetor[j++] : vetor[j] < vetor[i] ? vetor[j++] : vetor[i++];
        }
        for (i = 0; i < tam; i++) {
                vetor[i] = x[i];
        }
        free(x);
}

void mergeSort (int *vetor, int tam) {
        if (tam < 2)
                return;
        int metade = tam / 2;
        mergeSort(vetor, metade);
        mergeSort(vetor + metade, tam - metade);
        merge(vetor, tam, metade);
}

int main(int argc, char const *argv[]) {

        int vetor[TAM];
        int i;

        //srand(time(NULL));
        for (i=0; i < TAM; i++) {
                vetor[i] = (rand() % 10000) + 1; // Preenche o vetor com valores aleatórios;
                //printf(" %d\n,",vetor[i]);
        }

        mergeSort(vetor, TAM);

        /*
           printf("\n\n");
           for (i=0; i < TAM; i++)    {
           printf(" %d\n,",vetor[i]);
           }
           printf("\n\n ");
         */

        return 0;
}
