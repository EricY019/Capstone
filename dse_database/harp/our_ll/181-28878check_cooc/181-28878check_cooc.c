#include <stdio.h>

#define MCR 20

typedef double real;
typedef struct cooccur_rec {
    int word1;
    int word2;
    real val;
} CREC;

char *inputfile="cooc.bin";

int main(){
    FILE *fin;
    CREC cr;
    int i=0;

    fin=fopen(inputfile,"rb");
    if (fin==NULL) printf("Error on opening file!");
    else{
        for (i=0;i<MCR;i++){
            fread(&cr, sizeof(CREC), 1, fin);
            printf("word1=%d,word2=%d,val=%lf\n",cr.word1,cr.word2,cr.val);
        }
        fclose(fin);
    }
}
