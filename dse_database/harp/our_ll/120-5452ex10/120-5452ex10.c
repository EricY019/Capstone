#include <stdio.h>

int main(int argc, char *argv[]){
    int i = 0;

    //go through each string in argv
    //why skip argv[0]?
    for(i = 1; i < argc; i++){
        printf("arg %d: %s\n",i, argv[i]);
    }

    //let’s make our own array of strings
    char *states[] = { "Colorado","California","Arizona","Oregon" };
    int num_of_states = 4;

    for(i = 0; i < num_of_states; i++){
        printf("states %d: %s\n",i, states[i]);
    }

    return 0;
}