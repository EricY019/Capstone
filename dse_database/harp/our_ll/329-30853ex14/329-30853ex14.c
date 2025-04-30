#include <stdio.h>
#include <ctype.h>

int isAlphaOrBlank(char ch);
void printLetters(char arg[]);

void printArgs(int argc, char *argv[]) {
  for(int i = 0; i < argc; i++)
    printLetters(argv[i]);
}

void printLetters(char arg[]) {
  for(int i = 0; arg[i]; i++) 
    if(isAlphaOrBlank(arg[i]))
      printf("'%c' == %d ", arg[i], arg[i]);

  printf("\n");
}

int isAlphaOrBlank(char ch) {
  return isalpha(ch) || isblank(ch);
}

int main(int argc, char *argv[]) {
  printArgs(argc, argv);
  return 0;
} // end main
