#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>


void __attribute__((noinline))
ottawa(void)
{
    	printf("no arg\n");
	return;
}

void __attribute__((noinline))
quebec(int a)
{
    	printf("%d",a);
	return;
}

void __attribute__((noinline))
rimouski(int a, float b)
{
    	printf("*%d , %f\n",a,b);
	return;
}

int  __attribute__((noinline))
getAnswer(int a, char b)
{
    	printf(".");
	return 42;
}

void awesome(char *a, char *b)
{
    	printf(".");
	return;
}

void beauce(int a, char *b)
{
    	printf(".");
	return;
}

void __attribute__((noinline))
 montreal(int a, char *b, char c)
{
    	printf(".");
	return;
}
void __attribute__((noinline))
sherbrook(int a, char *b, char c, void *d)
{
    	printf("%d .%s, %c, %p\n", a,b,c,d);
	return;
}
void print(int a, short b,char c, char *d, int *e)
{
	printf("%d, %d, %c, %s, %d\n",a ,b ,c ,d, *e);
}

int main(int argc, char **argv)
{
	int i, var1 = 18, var2 = 19;
	volatile int a = 53;
	float b = 0.0f;
	printf("suspect Starting\n");
	sleep(2);
	for(i = 0; i < 3; ++i)
	{
		ottawa();
		print(a, 86,'c', "Hello World",&var1 );
		printf("b\n");
		quebec(a);
		getAnswer(18+i, 'a');
		awesome("Good Morning", "Good Night");
		beauce(24,"Life is like a box of chocolates");
		montreal(24,"Life is like a box of chocolates", 'p');
		sherbrook(24,"Life is like a box of chocolates", 'p', &var1);
		rimouski(18, b);
		sleep(1);
	}
	return 0;
}
