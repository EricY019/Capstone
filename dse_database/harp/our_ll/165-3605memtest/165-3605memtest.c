// to compile memtest

#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

char** myalloc_data_( size_t size  )
{
    int i = 0;    
    char** tmp = NULL;    
    char** buffer = (char**) calloc( size, sizeof( char*) );
    for ( i = 0, tmp = buffer; i < size; ++i, ++tmp )
    {
        int elem_size = 256 + rand() % 10;        
        *tmp = (char*) malloc( elem_size );
    }    
    return buffer;    
}

void myfree_data_( char** buffer, size_t size )    
{
    int i = 0;    
    char** tmp = NULL;    
    for ( i = 0, tmp = buffer; i < size; ++i, ++tmp )
    {
        free( *tmp );        
    }    
    free( buffer );    
}

int main()
{
    char** buffer;
    size_t size1 = 3*1024*1024, size2 = 1*1024*1024;    

    printf("First ... ");    
    
    buffer = myalloc_data_( size1 );
    printf("done\n");    
    sleep( 10 );
    myfree_data_( buffer, size1 );

    printf("Second ... ");    
    buffer = myalloc_data_( size2 );
    printf("done\n");   
    sleep( 10 );
    myfree_data_( buffer, size2 ); 
    return 0;    
}
