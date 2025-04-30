#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[])
{
    int i, j, k, total;
    char map[200];

    memset(map, 0, sizeof(map));
    for (i = 0; i <= 5; i++) {
        for (j = 0; j <= 4; j++) {
            for (k = 0; k <= 6; k++) {
                total = 8*i + 10*j + 18*k;
                map[total] = 1;
            }
        }
    }
    for (i = 1, total = 0; i < 200; i++) {
        total += map[i];
    }
    printf("%d\n", total);

	return 0;
}
