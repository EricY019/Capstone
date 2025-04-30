#include <stdio.h>

int count(int a, int b, int c, int d)
{
	return (1000*a+100*b+10*c+d);
}
int main(int argc, char* argv[])
{
	int i,j,k,m, t;
	freopen("input.txt", "r", stdin); 
	for (i=1;i<10;i++){
		for (j=0;j<10;j++) {
			for (k=0;k<10;k++) {
				for (m=0;m<10;m++) {
					t = count(i,j,k,m);
					if ((9*t)==count(m,k,j,i)){
						printf("%d\n", t);
					}
				}
			}
		}
	}
	return 0;
}