//
//  main.c
//  P3
//
//  Created by Breezewish on 13-11-14.
//  Copyright (c) 2013年 Breezewish. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i=0;
    char a[]="abm", b[]="aqid", c[10];
    
    while (a[i]!='\0' && b[i]!='\0') {
        if (a[i]>=b[i])
            c[i]=a[i]-32 ;
        else
            c[i]=b[i]-32 ;
        i++;
    }
    
    c[i]='\0';
    puts(c);
    
    return 0;
}

