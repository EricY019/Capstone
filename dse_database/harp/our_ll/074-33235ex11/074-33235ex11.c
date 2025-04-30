#include <stdio.h>

int main(int argc, char *argv[])
{
    // go through each string in argv

    int i = (argc - 1);
    while (i >= 0) {
        printf("arg: %d: %s\n", i, argv[i]);
        i--;
    }

    // lets make our own array of strings
    char *states[] = {
        "California", "Oregon",
        "Washington", "Texas"
    };

    int num_states = 4;
    i = 0;
    while (i < num_states) {
        printf("state: %d: %s\n", i, states[i]);
        i++;
    };

    // copy argv[] into another states
    for (i = 0; i < argc; i++) {
        states[i] = argv[i];
    };

    // initialise new array
    char *newarray[4] = {};

    for (i = 0; i < num_states; i++) {
        printf("state: %d: %s\n", i, states[i]);
        // copy states into a new array
        newarray[i] = states[i];
    };

    for (i = 0; i < num_states; i++) {
        printf("newarray: %d: %s\n", i, newarray[i]);
    };

    states[1] = "I HAVE CHANGED!";

    for (i = 0; i < num_states; i++) {
        printf("newarray: %d: %s\n", i, newarray[i]);
    };

    return 0;
}
