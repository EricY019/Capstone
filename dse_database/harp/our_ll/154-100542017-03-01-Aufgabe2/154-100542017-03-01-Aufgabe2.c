# include <stdio.h>
# include <stdlib.h>

int cmpfunc (const void *a, const void *b)
{
     return ( *(int*)a - *(int*)b );
}

int main (void)
{
        system("cls");
        setbuf(stdin, NULL);

        int prozente[] = {38, 33, 30, 31, 25};
        int size = sizeof(prozente)/sizeof(int);
        int rueckgabe[size][2];

        printf("\n\n\t\tVor der Sortierung:\n\n");

        for(int i = 0; i < size; i++)
        {
            printf("\t\t%d --> %d\n", i, prozente[i]);
        }

        qsort(prozente, 5, sizeof(int), cmpfunc);

        printf("\n\n\t\tNach der Sortierung:\n");

        int i = 0;

        for(int j = size ; j > 0; j--)
        {
            rueckgabe[j][0] = prozente[i];
            printf("\n\t\t%d --> %d", (j - 1), rueckgabe[j][0]);
            i++;
        }

        printf("\n\n");

        return EXIT_SUCCESS;
}