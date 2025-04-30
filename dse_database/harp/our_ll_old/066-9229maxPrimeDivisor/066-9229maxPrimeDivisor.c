#include<stdio.h>
int main()
{
long n = 600851475143L,i;
for(i=1;i<n;i++)
{
if(n%i==0)
  n = n/i;
}

printf("%d",n);
}
