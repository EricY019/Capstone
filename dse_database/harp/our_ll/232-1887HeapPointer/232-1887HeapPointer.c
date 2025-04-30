#include <stdio.h>
#include <stdlib.h>

typedef struct { 
    int year_planted;
    // ... kind, cost, ...
} Tree;

Tree* plant_tree(int year) {
    Tree* tn = malloc(sizeof(Tree));
    tn->year_planted = year;
    return tn;
}

int main(void) {
    const int ORCHARD = 100;
    // lets grow some apple trees ...
    Tree* apples[ORCHARD];
    for (int i=0;  i<ORCHARD;  i++)
        apples[i]= plant_tree(2014);
    
    // apples don't sell ... let's try pears
    Tree* pears[ORCHARD];
    for (int i=0;  i<ORCHARD;  i++)
        pears[i]= plant_tree(2016);
}

