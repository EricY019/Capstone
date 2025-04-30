#include <stdio.h>

/* These type declarations would be better in a header file.
   They are included in the source only for simplicity here. */

struct vec3 {
    long double x;
    long double y;
    long double z;
};
// alias the type "VEC3" to mean "struct vec3"
typedef struct vec3 VEC3;

// declare and alias a new struct type "struct vec2" as "VEC2"
typedef struct vec2 {
    long double x;
    long double y;
} VEC2;

void printVec3(VEC3 v);
VEC3 modifyVec3(VEC3 v, long double x, long double y, long double z);
void setVec2(VEC2 *wp, long double x, long double y);
void printVec2(VEC2 *wp);

int main(void)
{
    // declare a new struct type called "struct vec3"
    
    VEC3 v, vprime;
    VEC2 w;
    
    v.x = 0.0;
    v.y = 0.0;
    v.z = 0.0;
    w.x = 0.0;
    w.y = 0.0;
    
    puts("-----Pass by value test-----");
    puts("Original 3 vector:");
    printVec3(v);
    vprime = modifyVec3(v, 1.0, 2.0, 3.0);
    puts("Original 3 vector after modification:");
    printVec3(v);
    puts("New 3 vector after modification:");
    printVec3(vprime);
    
    puts("-----Pass by reference test-----");
    puts("Original 2 vector:");
    printVec2(&w);
    setVec2(&w, 1.0, 2.0);
    puts("Original 2 vector after modification:");
    printVec2(&w);

    return 0;
}

void printVec3(VEC3 v)
{
    printf("3Vector : [%Lf, %Lf, %Lf]\n", v.x, v.y, v.z);
}

VEC3 modifyVec3(VEC3 v, long double x, long double y, long double z)
{
    v.x = x;
    v.y = y;
    v.z = z;
    return v;
}

void setVec2(VEC2 *wp, long double x, long double y)
{
    // Dereference the pointer, then set its field
    (*wp).x = x;
    // Syntactic sugar for doing the same thing directly
    wp->y = y;
}

void printVec2(VEC2 *wp)
{
    printf("2Vector : [%Lf, %Lf]\n", wp->x, wp->y);
}
