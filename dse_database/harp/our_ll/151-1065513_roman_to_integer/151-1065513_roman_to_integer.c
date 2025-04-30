#include <stdio.h>
#include <string.h>

int valueOfSymbol(char c)
{
    switch (c) {
        case 'I': return 1;
        case 'V': return 5;
        case 'X': return 10;
        case 'L': return 50;
        case 'C': return 100;
        case 'D': return 500;
        case 'M': return 1000;
        default: return 0;
    }
    return 0;
}

int romanToInt(char* s) {
    char* c;
    int current_value = 0;
    int big_value = 0;
    int result = 0;
    for (c = s + strlen(s) - 1; c + 1 != s; c--)
    {
        current_value = valueOfSymbol(*c);
        if (current_value >= big_value)
        {
            result += current_value;
            big_value = current_value;
        }
        else
        {
            result -= current_value;
        }
    }
    return result;
}

int main()
{
    printf("result for %s is %d.\n", "MCMLIV", romanToInt("MCMLIV"));
    printf("result for %s is %d.\n", "MCMXC", romanToInt("MCMXC"));
    printf("result for %s is %d.\n", "MMXIV", romanToInt("MMXIV "));
    
    return 0;
}