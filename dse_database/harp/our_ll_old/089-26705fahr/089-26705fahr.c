#include <stdio.h>

int main()
{
    float fahrenheit, celsius;
    int start = -50, end = 300, by = 10;

    fahrenheit = start;
    while (fahrenheit <= end) {
        celsius = (5.0/9.0) * (fahrenheit - 32);
        printf("%3.0f°F = %5.1f°C\n", fahrenheit, celsius);
        fahrenheit = fahrenheit + by;
    }
}

/*
-50°F = -45.6°C
-40°F = -40.0°C
-30°F = -34.4°C
-20°F = -28.9°C
-10°F = -23.3°C
  0°F = -17.8°C
 10°F = -12.2°C
 20°F =  -6.7°C
 30°F =  -1.1°C
 40°F =   4.4°C
 50°F =  10.0°C
 60°F =  15.6°C
 70°F =  21.1°C
 80°F =  26.7°C
 90°F =  32.2°C
100°F =  37.8°C
110°F =  43.3°C
120°F =  48.9°C
130°F =  54.4°C
140°F =  60.0°C
150°F =  65.6°C
160°F =  71.1°C
170°F =  76.7°C
180°F =  82.2°C
190°F =  87.8°C
200°F =  93.3°C
210°F =  98.9°C
220°F = 104.4°C
230°F = 110.0°C
240°F = 115.6°C
250°F = 121.1°C
260°F = 126.7°C
270°F = 132.2°C
280°F = 137.8°C
290°F = 143.3°C
300°F = 148.9°C
*/
