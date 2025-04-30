// anagram sort
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

const int MAX_STRING = 10 ;

void insertionSort(char *str) {
  int i, j;
  char temp ;
  for (i=0; i< MAX_STRING; i++) {
    if (str[i] == '\0') {
      break;
    }
    for (j=0; j< i; j++) {
      if (str[i] < str[j]) {
        temp = str[j] ;
        str[j] = str[i] ;
        str[i] = temp ;
      }
    }
  }
  
}

int compareViaAnagram(char *str1, char *str2) {
  insertionSort(str1); 
  insertionSort(str2); 
  return strcmp(str1, str2) ;
}

void anagramSort( char *strArray ) {
  int i, j;
  char temp[MAX_STRING] ;
  for (i=0; i< 10; i++) {
    for (j=0; j< i; j++) {
      if (compareViaAnagram(&strArray[i*MAX_STRING], &strArray[j*MAX_STRING]) <= 0) {
        strcpy(temp, &strArray[j*MAX_STRING]);
        strcpy(&strArray[j*MAX_STRING], &strArray[i*MAX_STRING]);
        strcpy(&strArray[i*MAX_STRING], temp);
      }
    }
  }

}

int main() {
  int i;
  char strArray[10][MAX_STRING] ;
  strcpy(strArray[0], "cat");
  strcpy(strArray[1], "gra");
  strcpy(strArray[2], "cat");
  strcpy(strArray[3], "catcher");
  strcpy(strArray[4], "bird");
  strcpy(strArray[5], "cats");
  strcpy(strArray[6], "drib");
  strcpy(strArray[7], "scat");
  strcpy(strArray[8], "arg");
  strcpy(strArray[9], "tac");


  
  anagramSort( *strArray) ;
  
  printf("\n");
  for (i=0; i<10; i++) {
    printf("%s ", strArray[i]);
  }
  printf("\n");
}



