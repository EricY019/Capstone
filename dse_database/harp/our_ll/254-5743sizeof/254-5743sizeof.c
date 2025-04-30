#include <stdio.h>
int main(void)
{
    char * data_type[] = {"int", "char", "float", "double", "long"};
    int index;
    printf("%10s %5s\n", "data-type", "length");
    for (index = 0; index < sizeof(data_type)/sizeof(char *); index++)
    {
        printf("%10s %5d\n", data_type[index], sizeof(data_type[index]));
    }
    return 0;
}
