#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>

void* Thread_function1(void * arg)
{
 unsigned int i=1;
    while(i < 11)
    {
          printf("Child Thread Iteration %d\n",i);
         i++;
   if(i%2)
         sleep(2);
   else
         sleep(1);
   }
   return arg;
}
void* Thread_function2(void * arg)
{
 unsigned int i=1;
 while(i < 11)
 {
   printf("Child Thread 2 Iteration %d\n",i);
   i++;
   if(i%2)
          sleep(2);
   else
          sleep(1);
 }
 return arg;
}
int main (int argc, char *argv[])
{
   pthread_t thread;
   pthread_t thread2;
   if(pthread_create(&thread,NULL,Thread_function1,NULL))
   {
   return(1);
   }
   if(pthread_create(&thread2,NULL,Thread_function2,NULL))
   {
   return(1);
   }
   unsigned int i = 1;
   while(i < 11)
   {
     printf("Main Loop Iteration %d\n",i);
     i++;
     if(i%2)
         sleep(1);
     else
         sleep(2);
   }
   return 0;
}
