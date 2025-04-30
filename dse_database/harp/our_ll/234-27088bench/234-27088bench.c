/* Zx` by nameless */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

/* -------------------- */
/* Övg^Cvé¾ */
/* -------------------- */
long calcFuncCall(void);
long calcAdd(void);
long calcSub(void);
long calcMul(void);
long calcDiv(void);
long calcShift(void);

long calcFloatAdd(void);
long calcFloatSub(void);
long calcFloatMul(void);
long calcFloatDiv(void);

long calcDoubleAdd(void);
long calcDoubleSub(void);
long calcDoubleMul(void);
long calcDoubleDiv(void);

int foo(void);

/* ½àµÈ¢Ö */
int foo(void)
{
	return 1;
}
/* -------------------------------- */
/* ÖÄÑoµ						*/
/* -------------------------------- */
long calcFuncCall(void)
{
	long stTim,endTim;
	int i,j;

	stTim=clock();

	for(i=0;i<10000;i++){
		for(j=0;j<10000;j++){
			foo();
		}
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}
/* -------------------------------- */
/* ®lÌÁZÌvª 				*/
/* -------------------------------- */
long calcAdd(void)
{
	long stTim,endTim;
	int i,j;
	int a;

	stTim=clock();

	a=0;
	for(i=0;i<10000;i++){
		for(j=0;j<10000;j++){
			a+=j;
		}
		a=0;
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}

/* -------------------------------- */
/* ®lÌ¸ZÌvª 				*/
/* -------------------------------- */
long calcSub(void)
{
	long stTim,endTim;
	int i,j;
	int a;

	stTim=clock();

	a=100000;
	for(i=0;i<10000;i++){
		for(j=0;j<10000;j++){
			a-=j;
		}
		a=0;
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}

/* -------------------------------- */
/* ®lÌæZÌvª 				*/
/* -------------------------------- */
long calcMul(void)
{
	long stTim,endTim;
	int i,j;
	int a;

	stTim=clock();

	a=0;
	for(i=0;i<10000;i++){
		for(j=0;j<10000;j++){
			a*=j;
		}
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}

/* -------------------------------- */
/* ®lÌZÌvª 				*/
/* -------------------------------- */
long calcDiv(void)
{
	long stTim,endTim;
	int i,j;
	int a;

	stTim=clock();

	a=0;
	for(i=0;i<10000;i++){
		for(j=1;j<10001;j++){	/* 0Zª­¶µÈ¢æ¤ÉjÍ1©ç */
			a/=j;
		}
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}

/* -------------------------------- */
/* ®lÌVtgÌvª 			*/
/* -------------------------------- */
long calcShift(void)
{
	long stTim,endTim;
	int i,j;
	int a,b;

	stTim=clock();

	a=0;
	b=1;
	for(i=0;i<10000;i++){
		for(j=0;j<10000;j++){
			a<<=b;
		}
		a=0;
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}

/* -------------------------------- */
/* ®¬_lÌÁZÌvª			*/
/* -------------------------------- */
long calcFloatAdd(void)
{
	long stTim,endTim;
	int i,j;
	float a;

	stTim=clock();

	a=0.0f;
	for(i=0;i<10000;i++){
		for(j=0;j<10000;j++){
			a+=j;
		}
		a=0.0f;
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}

/* -------------------------------- */
/* ®¬_lÌ¸ZÌvª			*/
/* -------------------------------- */
long calcFloatSub(void)
{
	long stTim,endTim;
	int i,j;
	float a;

	stTim=clock();

	a=100000.0f;
	for(i=0;i<10000;i++){
		for(j=0;j<10000;j++){
			a-=(float)j;
		}
		a=0.0f;
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}


/* -------------------------------- */
/* ®¬_lÌæZÌvª			*/
/* -------------------------------- */
long calcFloatMul(void)
{
	long stTim,endTim;
	int i,j;
	float a;

	stTim=clock();

	a=0.0f;
	for(i=0;i<10000;i++){
		for(j=0;j<10000;j++){
			a*=(float)j;
		}
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}

/* -------------------------------- */
/* ®¬_lÌZÌvª			*/
/* -------------------------------- */
long calcFloatDiv(void)
{
	long stTim,endTim;
	int i,j;
	float a;

	stTim=clock();

	a=0.0f;
	for(i=0;i<10000;i++){
		for(j=1;j<10001;j++){	/* 0Zª­¶µÈ¢æ¤ÉjÍ1©ç */
			a/=(float)j;
		}
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}

/* -------------------------------- */
/* ®¬_lÌÁZÌvª			*/
/* -------------------------------- */
long calcDoubleAdd(void)
{
	long stTim,endTim;
	int i,j;
	double a;

	stTim=clock();

	a=0.0;
	for(i=0;i<10000;i++){
		for(j=0;j<10000;j++){
			a+=j;
		}
		a=0.0;
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}

/* -------------------------------- */
/* ®¬_lÌ¸ZÌvª			*/
/* -------------------------------- */
long calcDoubleSub(void)
{
	long stTim,endTim;
	int i,j;
	double a;

	stTim=clock();

	a=100000.0f;
	for(i=0;i<10000;i++){
		a=10000.0;
		for(j=0;j<10000;j++){
			a-=(double)j;
		}
		a=0.0;
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}


/* -------------------------------- */
/* ®¬_lÌæZÌvª			*/
/* -------------------------------- */
long calcDoubleMul(void)
{
	long stTim,endTim;
	int i,j;
	double a;

	stTim=clock();

	a=0.0;
	for(i=0;i<10000;i++){
		for(j=0;j<10000;j++){
			a*=(double)j;
		}
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}

/* -------------------------------- */
/* ®¬_lÌZÌvª			*/
/* -------------------------------- */
long calcDoubleDiv(void)
{
	long stTim,endTim;
	int i,j;
	double a;

	stTim=clock();

	a=0.0;
	for(i=0;i<10000;i++){
		for(j=1;j<10001;j++){
			a/=(double)j;		/* 0Zª­¶µÈ¢æ¤ÉjÍ1©ç */
		}
	}
	
	endTim=clock();
	endTim-=stTim;
	if(CLOCKS_PER_SEC>0){
		int time_dd=1000/CLOCKS_PER_SEC;
		if(time_dd>0) endTim*=time_dd;
	}

	return endTim;
}

int main()
{
	char szStr[256];
	int ctime;
	ctime=0;

	ctime=ctime+calcFuncCall();
	ctime=ctime+calcAdd();
	ctime=ctime+calcSub();
	ctime=ctime+calcMul();
	ctime=ctime+calcDiv();
	ctime=ctime+calcShift();
	ctime=ctime+calcFloatAdd();
	ctime=ctime+calcFloatSub();
	ctime=ctime+calcFloatMul();
	ctime=ctime+calcFloatDiv();
	ctime=ctime+calcDoubleAdd();
	ctime=ctime+calcDoubleSub();
	ctime=ctime+calcDoubleMul();
	ctime=ctime+calcDoubleDiv();


	printf("Spec Time=,%d",ctime);

	return 0;
}
