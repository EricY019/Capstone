#include <stdio.h>

int main(int argc, char *argv[]) {
  // print each argument passed to the program
  for(int i = 0; i < argc; i++)
    printf("arg %d: %s\n", i, argv[i]);

  // array of states
  char *states[] = {
    "California", "Oregon",
    "Washington", "Texas"
  };

  for(int i = 0, numStates = 4; i < numStates; i++)
    printf("State %d: %s\n", i, states[i]);

  return 0;
}