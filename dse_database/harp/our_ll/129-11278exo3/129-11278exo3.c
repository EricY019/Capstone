#include <stdio.h>
#include <ctype.h>

//FIXME: Comment the code !!!

void swap(char* v1, char* v2) {
    if (v1 != v2) {
        char tmp = *v1;
        *v1 = *v2;
        *v2 = tmp;
    }
}

int stringLength(const char* str) {
    int length;

    for(length = 0; str[length] != '\0'; ++length);
    return length;
}

// FIXME: this function have issues with non english characters
void reverseString(char* str) {
    int length = stringLength(str);

    for (int i = length - 1; i >= length/2; --i) {
        swap(&str[i], &str[(length - 1) - i]);
    }
}

// FIXME: this function have issues with non english characters
void permAlphaChar(char* str, int key) {
    char alphabet[26] = "abcdefghijklmnopqrstuvwxyz";
    int str_length = stringLength(str);

    for (int i = 0; i < str_length; i++) { 
        //if (str[i] == ' ') continue;
        for (int j = 0; j < 26; j++) {
            if (str[i] == alphabet[j]) {
                str[i] = alphabet[(j+key) % 26];
                break;
             } else if (str[i] == toupper(alphabet[j])) {
                str[i] = toupper(alphabet[(j+key) % 26]);
                break;
            }
        }
    }
}

int main() {
    char rev_msg[] = "Bonjour le monde";
    int rev_length = stringLength(rev_msg); 
    char perm_msg[] = "Bonjour a tous et toutes";
    int perm_length = stringLength(perm_msg); 

    printf("La chaine de caracteres a inverser est \"%s\" et a pour longueur %d caractere(s)\n", rev_msg, rev_length);
    reverseString(rev_msg);
    printf("La chaine inversee de caracteres est \"%s\"\n", rev_msg);

    printf("\n");
   
    printf("La chaine de caracteres a permuter est \"%s\" et a pour longueur %d caractere(s)\n", perm_msg, perm_length);
    permAlphaChar(perm_msg, 13);
    printf("La chaine permutee de caracteres est \"%s\"\n", perm_msg);

    return 0;
}
