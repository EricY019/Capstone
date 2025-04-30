#include <stdio.h>

int main(int argc, char *argv[])
{
    int i = 0;
    argv[2] = "two";    
    char string[] = "strang\n";

    printf("%s", string);

    for (i = 1; i < argc; i++) {
        printf("arg %d: %s\n", i, argv[i]);
    }

    char *states[] = {
        "California", "Oregon",
        "Washington", "Texas", argv[2] 
    };

    int num_states = 5;

    for (i = 0; i < num_states; i++) {
        printf("state %d: %s\n", i, states[i]);
    }

    return 0;
}

