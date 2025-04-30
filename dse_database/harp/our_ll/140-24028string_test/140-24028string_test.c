#include <stdio.h>
#include <string.h>
#include <ctype.h>

typedef char String25[25];
typedef char String30[30];

int main()
{
    int i;
    const String25 test1 = "Hello, world! ";
    const String25 test2 = "I'm programming! ";
    String30 other, other_caps;

    /* WRONG
    char str[5];
    str = "hi";
    */

    printf("test1 = [%s] (%d)\n", test1, strlen(test1));
    printf("test2 = [%s] (%d)\n", test2, strlen(test2));

    /* other = test1 */
    strncpy(other, test1, sizeof(other) - 1);
    other[sizeof(other)-1] = '\0'; /* paranoia ? */

    printf("[%s]\n", other);
    printf("length of other = %d\n", strlen(other));

    /* Although cumbersome... this is the only safe way I could find. Is there a better one? */
    strncat(other, test2, sizeof(other) - 1 - strlen(other));
    printf("[%s]\n", other);
    printf("length of other = %d\n", strlen(other));

    strncpy(other_caps, other, sizeof(other_caps) - 1);
    other_caps[sizeof(other_caps)-1] = '\0';

    /* convert to CAPITAL letters */
    for (i = 0; other_caps[i] != '\0' && i < sizeof(other_caps) - 1; i++) {
            other_caps[i] = toupper(other_caps[i]);
    }

    printf("[%s]\n", other_caps);
    printf("length of other_caps = %d\n", strlen(other_caps));

    printf("test1 in comparison to other = %d\n", strncmp(test1, other, sizeof(test1) - 1));
    printf("test2 in comparison to other = %d\n", strncmp(test2, other, sizeof(test2) - 1));
    printf("test1 in comparison to test2 = %d\n", strncmp(test1, test2, sizeof(test1) - 1));
    printf("other in comparison to other = %d\n", strncmp(other, other_caps, sizeof(other) - 1));

    strncpy(other, test2, sizeof(other) - 1);
    other[sizeof(other)-1] = '\0';
    printf("[%s]\n", other);
    printf("length of other = %d\n", strlen(other));

    strncat(other, test1, sizeof(other) - 1 - strlen(other));
    printf("[%s]\n", other);
    printf("length of other = %d\n", strlen(other));

    /* This won't compile... cannot change a const String25! */
    /*
    strcpy(test, other, str_sz);
    puts(test);
    */

    return 0;
}
