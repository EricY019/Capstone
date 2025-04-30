/*
 * Author: Richard Ciampa
 * Course: CST337
 * Date: 2/20/2016
 */

#include <stdio.h>
#include <string.h>

char nand_gate(char x, char y);

int main(int argc, char *argv[]){

 if(argc == 3 && (strlen(argv[1]) == strlen(argv[2]))){
  
  //We only need the size of one because they are equal   
  size_t argSize = strlen(argv[1]);
  //Print the result
  printf("Result of NAND: ");
  //Loop through the command line args 
  for(int i = 0; i < argSize; i++){
      printf("%c", nand_gate(argv[1][i], argv[2][i]));
  }
  puts("\n"); 
 }
  return 0;
}

char nand_gate(char x, char y){
  if(x == '1' && y == '1'){
    return '0';
  }else{
    return '1';
  }
}
