#include<stdio.h>


static int nAge=0;
void callMe()
{
  printf("Callme\n" );
  int count=0;
  int age=0;


  
  printf(" age %d \t count %d\n",age,count);

  count=100;
  age=25;
  printf(" new age %d \t count %d\n",age,count);


  for(int i=0;i<10;i++)
    {
      printf("\n variable i =%d\n",i);
      age=i;
      printf("age %d",age);
      nAge  =age;
    }
}

void callName()
{
  printf("Call name nAge %d \n",nAge);
}



int main()
{
  printf("hello \n");
  callMe();
  callName();
  return 0;
}

