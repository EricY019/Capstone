#include<stdlib.h>
#include<stdio.h>
#include<time.h>

double* vector(int n){
	double *v;
	v = malloc( n* sizeof(double));
	for(int i=0;i<n;i++)
		v[i]=0.0;
	return v;
}
void initVec(double *a,int size){
	for(int i=0;i<size;i++)
		a[i]=(double)(rand()%100)/10.0;
}
void printTab(double *d,int size)
{
	printf("[");
	for(int i=0;i<size-1;i++)
		printf("%f,",d[i]);
	printf("%f]",d[size-1]);
	

}
double * addVec(double *a,double *b,int size)
{
	double *c = vector(size);
	for(int i=0;i<size;i++)
		c[i]=a[i]+b[i];
	return c;
}
int main(){
	int size =4;
	srand(time(0));

	double *a = vector(size);
	initVec(a,size);
	double *b = vector(size);
	initVec(b,size);
	double *c = addVec(a,b,size);


	printTab(a,size);
	printf("\n");
	printTab(b,size);
	printf("\n");
	printTab(c,size);
	printf("\n");
}
