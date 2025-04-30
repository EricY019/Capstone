#include <stdio.h>

/*Playing with C types, loops, if-else & switching*/ 

int main(int argc, char *argv[])
{
    int age = 22;
    double height = 1.8;
    float power = 2.345f;
    char initial = 'G';
    char first_name[] = "Jonas";
    char last_name[] = "Libbrecht";
    int myarray[4] = {1, 2, 3, 4};
    char *array_of_strings[3] = {"foobar", "bar", "jonaslibbrecht"};

    printf("I am %d years old.\n", age);
    printf("I am %f meter tall.\n", height);
    printf("I have an initial %c \n", initial);
    printf("I have a firstname %s \n", first_name);
    printf("I have a lastname %s \n", last_name);
    printf("I have %f amount of power \n", power);
    printf("My whole name is %s %c. %s \n", first_name, initial, last_name);
    printf("Amount of arguments %d \n", argc);

    int i;
    for(i=0;i<argc;i++)
    {
	printf("Argument %d: %s \n", i, argv[i]);
    }

    printf("Size of array `myarray` %lo\n", sizeof(myarray)/sizeof(myarray[0]));
    int j;
    for(j=0;j<sizeof(myarray)/sizeof(myarray[0]);j++) {
	printf("array item %d value %d\n", j, myarray[j]);
    }

    printf("an integer is %lo bytes large\n", sizeof(myarray[0]));
    printf("a double is %lo bytes large\n", sizeof(height));
    printf("this char is %lo bytes large\n", sizeof(first_name));
    printf("this char is %lo bytes large\n", sizeof(last_name));
    printf("this char type is %lo bytes large\n", sizeof(char));
    
    int x;
    printf("amount of strings in `array_of_strings` %lo\n", sizeof(array_of_strings)/sizeof(array_of_strings[0]));
    for(x=0; x<sizeof(array_of_strings)/sizeof(array_of_strings[0]); x++)
    {
        printf("item %d with value %s\n", x,array_of_strings[x]);
    }

    int y = 5;
    int z = 0;
    while(z < y) {
        printf("while number %d\n", z);
        z++;
        if(z == 4) {
            printf("my happy number %d\n", z);
        } else {
            printf("my sad number %d\n", z);
        }
    }

    char letter = 'B';
    switch(letter) {
        case 'A':
            printf("He chose the letter A!\n");
        case 'B':
            printf("He chose the letter B!\n");
        default:
            printf("He chose poorly, he chose nothing\n");
    }

    return 0;
}
