/*
http://www.solipsys.co.uk/Writings/TestsForProgrammers_Part_1.html

Write a C routine with the following prototype:

    void condense_by_removing(char *z_terminated, char char_to_remove);

Your routine should modify the given zero-terminated string in place, removing
all instances of the given char.
*/

#include <assert.h>
#include <stdio.h>
#include <string.h>

void condense_by_removing(char *, char);

int main(int argc, char **argv) {
    char s1[] = "aaaa";
    char s2[] = "aabbaa";
    char s3[] = "aaaabbbccd";

    condense_by_removing(s1,'z');
    assert(!strcmp(s1,"aaaa"));

    condense_by_removing(s1,'a');
    assert(!strcmp(s1,""));

    condense_by_removing(s2,'a');
    assert(!strcmp(s2,"bb"));

    condense_by_removing(s2,'b');
    assert(!strcmp(s2,""));

    condense_by_removing(s3,'d');
    assert(!strcmp(s3,"aaaabbbcc"));

    condense_by_removing(s3,'a');
    assert(!strcmp(s3,"bbbcc"));

    printf("Done.\n");
    return 0;
}

/*
Condense string 'z_term' by removing all instances of charater 'remove'.
Tracks current source position in 'i', rebuilt position in 'j'.

*/

void condense_by_removing(char *z_term, char remove) {
    int i=0, j=0;
    char ch;

    while ((ch = z_term[i++])) {
        if (ch != remove) {
            z_term[j++] = ch;
        }
    }
    z_term[j] = '\0';
}

