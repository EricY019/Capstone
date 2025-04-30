# include <stdio.h>
# include <stdlib.h>

int main(void)
{
    system("cls");

    printf("\n\n");

    printf("\n\t\tHALLO WELT als Stringkonstante!\n\t\t");

    char stringArray[11];
    stringArray[0] = 'H';
    stringArray[1] = 'A';
    stringArray[2] = 'L';
    stringArray[3] = 'L';
    stringArray[4] = 'O';
    stringArray[5] = ' ';
    stringArray[6] = 'W';
    stringArray[7] = 'E';
    stringArray[8] = 'L';
    stringArray[9] = 'T';
    stringArray[10] = '\0';

    for (int i = 0; i < 11; i++)
    {
        printf("%c", stringArray[i]);
    }

    printf("\n\t\t");

    char halloWelt[] = {'H','A','L','L','O',' ','W','E','L','T','\0'};

    printf("%s", halloWelt);

    printf("\n\t\t");

    char hW[] = {"HALLO WELT\0"};
    printf("%s", hW);

    printf("\n\n");

    return EXIT_SUCCESS;
}