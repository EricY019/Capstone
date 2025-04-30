#include<stdio.h>
int array[10] = {1,2,3,4,5,6,7,8,9,10};
void bSearch(int val)
{
//To search val in array
int arrayLen = 10;
int count =0;
int oldi=0;
int i,temp;
for(i=arrayLen/2;i<arrayLen && i >=0;)
{
printf("%d,",i);
if(oldi==i)
{
    break;
}
temp = i;
count++;
if(array[i]>val)
{
if(i>oldi)
{
if((i-oldi)/2 !=0)
i=i-(i-oldi)/2;
else
i = i-1;
}
else
{
if(oldi-i/2 !=0)
i= i-(oldi-i)/2;
else
i = i-1;
}
}
else if(array[i]<val)
{
i=i+(oldi+i)/2;
}
else{
printf("Found in %d attempts\n",count);
return;
}
oldi = temp;
}

printf("Not Found in %d attempts\n",count);
return;
}
int main()
{
for(int i = 0;i<10;i++)
{
bSearch(i);
}
bSearch(11);
bSearch(0);
}
