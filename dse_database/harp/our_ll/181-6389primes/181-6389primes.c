#include <stdio.h>
int maximum = 32767; 
int count = 2; 
int internalcount; 
int main(void)
{
    for(count;count <= maximum;count++) 
    {
        for(internalcount = (count-1); count%internalcount;internalcount--) 
        {}
        if(internalcount == 1) 
        {
            printf("%i\n",count);
        }
    }
    return 0;
}
