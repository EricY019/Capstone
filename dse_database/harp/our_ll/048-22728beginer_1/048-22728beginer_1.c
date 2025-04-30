#include <stdio.h>

void printFileContent(char* filename){
    FILE* fp = fopen(filename,"r");
    char c;
    if (fp){
        while ((c = getc(fp)) != EOF)
            putchar(c);
        fclose(fp);
    }
}


int main(int argc, char* argv[]){
    char* filename = argv[1];
    printFileContent(filename);
    return 0;

}
